#include "graph.h"


using namespace std;

namespace heterogeneous {

void GRAPH::_Design_to_Graph(DESIGN &design){

    // initialization
    unordered_map<string, NODE*> umap_net_node;    // name, net_node
    unordered_map<string, NODE*> umap_device_node; // name, device_node
    int num_node = 0;

    // Device Features
    for(unordered_map<string, concrete::LEAVE*>::iterator iter1=design._umap_concrete_leave.begin(); iter1!=design._umap_concrete_leave.end(); iter1++){

        NODE* device_node = new NODE();
        device_node->_id = num_node++;
        device_node->_node_name = iter1->second->_concrete_leave_name;
        device_node->_type = NodeType::DeviceNode;
        device_node->_area = iter1->second->_area;
        device_node->_width = iter1->second->_width;
        device_node->_height = iter1->second->_height;
        device_node->_device_type = iter1->second->_device_type;

        umap_device_node[iter1->second->_concrete_leave_name] = device_node;
        _device_nodes.push_back(device_node);
        _nodes.push_back(device_node);

    }
    _num_device = _device_nodes.size();
    num_node = 0;

    // Net Features
    for(unordered_map<string, concrete::NET*>::iterator iter1=design._umap_concrete_net.begin(); iter1!=design._umap_concrete_net.end(); iter1++){

        NODE* net_node = new NODE();
        net_node->_id = num_node++;
        net_node->_node_name = iter1->second->_concrete_net_name;
        net_node->_type = NodeType::NetNode;
        net_node->_is_symmetric_net = iter1->second->_is_symmetric;
        net_node->_is_global_net = iter1->second->_is_global;
        net_node->_is_pin_net = iter1->second->_is_pin;
        net_node->_degree = iter1->second->_umap_leave.size();
        net_node->_HPWL = iter1->second->_HPWL;

        umap_net_node[iter1->second->_concrete_net_name] = net_node;
        _net_nodes.push_back(net_node);
        _nodes.push_back(net_node);

    }
    _num_net = _net_nodes.size();

    // Get Device Neighbors, Area of neighbors' device
    unordered_set<NODE*> neighbor_device;
    for(unordered_map<string, concrete::LEAVE*>::iterator iter1=design._umap_concrete_leave.begin(); iter1!=design._umap_concrete_leave.end(); iter1++){
        neighbor_device.clear();
        NODE* device_node = umap_device_node[iter1->second->_concrete_leave_name];
        for(unordered_map<string, concrete::NET*>::iterator iter2=iter1->second->_umap_net.begin(); iter2!=iter1->second->_umap_net.end(); iter2++){
            NODE* net_node = umap_net_node[iter2->second->_concrete_net_name];
            device_node->_neighbors.push_back(net_node);
            for(unordered_map<string, concrete::LEAVE*>::iterator iter3=iter2->second->_umap_leave.begin(); iter3!=iter2->second->_umap_leave.end(); iter3++){
                neighbor_device.insert(umap_device_node[iter3->second->_concrete_leave_name]);
            }
        }

        for(unordered_set<NODE*>::iterator iter2=neighbor_device.begin(); iter2!=neighbor_device.end(); iter2++){
            device_node->_area_of_neighbor_device.push_back((*iter2)->_area);
        }
    }

    // Get Net Neighbors, Degree of neighbors' degree
    unordered_set<NODE*> neighbor_net;
    for(unordered_map<string, concrete::NET*>::iterator iter1=design._umap_concrete_net.begin(); iter1!=design._umap_concrete_net.end(); iter1++){
        neighbor_net.clear();
        NODE* net_node = umap_net_node[iter1->second->_concrete_net_name];
        for(unordered_map<string, concrete::LEAVE*>::iterator iter2=iter1->second->_umap_leave.begin(); iter2!=iter1->second->_umap_leave.end(); iter2++){
            NODE* device_node = umap_device_node[iter2->second->_concrete_leave_name];
            net_node->_neighbors.push_back(device_node);
            for(unordered_map<string, concrete::NET*>::iterator iter3=iter2->second->_umap_net.begin(); iter3!=iter2->second->_umap_net.end(); iter3++){
                neighbor_net.insert(umap_net_node[iter3->second->_concrete_net_name]);
            }
        }

        for(unordered_set<NODE*>::iterator iter2=neighbor_net.begin(); iter2!=neighbor_net.end(); iter2++){
            net_node->_degree_of_neighbor_net.push_back((*iter2)->_degree);
        }      
    }

    // Device Node Feature: Sum of Device Area of Neighbors' Device
    for(list<NODE*>::iterator iter1=_device_nodes.begin(); iter1!=_device_nodes.end(); iter1++){
        (*iter1)->_sum_of_area_of_neighbor_device = 0;
        for(list<double>::iterator iter2=(*iter1)->_area_of_neighbor_device.begin(); iter2!=(*iter1)->_area_of_neighbor_device.end(); iter2++){
            (*iter1)->_sum_of_area_of_neighbor_device += (*iter2);
        }
    }

    // Net Node Feature: Sum of Net Degree of Neighbors' Net
    for(list<NODE*>::iterator iter1=_net_nodes.begin(); iter1!=_net_nodes.end(); iter1++){
        (*iter1)->_sum_of_degree_of_neighbor_net = 0;
        for(list<int>::iterator iter2=(*iter1)->_degree_of_neighbor_net.begin(); iter2!=(*iter1)->_degree_of_neighbor_net.end(); iter2++){
            (*iter1)->_sum_of_degree_of_neighbor_net += (*iter2);
        }
    }

    // Edge
    for(list<NODE*>::iterator iter1=_net_nodes.begin(); iter1!=_net_nodes.end(); iter1++){
        string net_name = (*iter1)->_node_name;
        NODE* net_node = (*iter1);
        concrete::NET* net = design._umap_concrete_net[net_name];

        // Net to Gate
        for(list<concrete::LEAVE*>::iterator iter2=net->_gates.begin(); iter2!=net->_gates.end(); iter2++){
            string device_name = (*iter2)->_concrete_leave_name;
            NODE* device_node = umap_device_node[device_name];

            EDGE edge1, edge2;
            edge1._type = EdgeType::Net2Gate;
            edge1._edge = pair<int, int>(net_node->_id, device_node->_id);
            edge2._type = EdgeType::Gate2Net;
            edge2._edge = pair<int, int>(device_node->_id, net_node->_id);
            _net2gate_edges_index.push_back(edge1);
            _gate2net_edges_index.push_back(edge2);
        }

        // Net to Source
        for(list<concrete::LEAVE*>::iterator iter2=net->_sources.begin(); iter2!=net->_sources.end(); iter2++){
            string device_name = (*iter2)->_concrete_leave_name;
            NODE* device_node = umap_device_node[device_name];

            EDGE edge1, edge2;
            edge1._type = EdgeType::Net2Source;
            edge1._edge = pair<int, int>(net_node->_id, device_node->_id);
            edge2._type = EdgeType::Source2Net;
            edge2._edge = pair<int, int>(device_node->_id, net_node->_id);
            _net2source_edges_index.push_back(edge1);
            _source2net_edges_index.push_back(edge2);
        }
        
        // Net to Capacitor
        for(list<concrete::LEAVE*>::iterator iter2=net->_capacitor.begin(); iter2!=net->_capacitor.end(); iter2++){
            string device_name = (*iter2)->_concrete_leave_name;
            NODE* device_node = umap_device_node[device_name];

            EDGE edge1, edge2;
            edge1._type = EdgeType::Net2Cap;
            edge1._edge = pair<int, int>(net_node->_id, device_node->_id);
            edge2._type = EdgeType::Cap2Net;
            edge2._edge = pair<int, int>(device_node->_id, net_node->_id);
            _net2cap_edges_index.push_back(edge1);
            _cap2net_edges_index.push_back(edge2);
        }

        // Net to Resistor
        for(list<concrete::LEAVE*>::iterator iter2=net->_resistor.begin(); iter2!=net->_resistor.end(); iter2++){
            string device_name = (*iter2)->_concrete_leave_name;
            NODE* device_node = umap_device_node[device_name];

            EDGE edge1, edge2;
            edge1._type = EdgeType::Net2Res;
            edge1._edge = pair<int, int>(net_node->_id, device_node->_id);
            edge2._type = EdgeType::Res2Net;
            edge2._edge = pair<int, int>(device_node->_id, net_node->_id);
            _net2res_edges_index.push_back(edge1);
            _res2net_edges_index.push_back(edge2);
        }

        // Net to Net (Symmetric Net)
        for(list<concrete::NET*>::iterator iter2=net->_symmetric_nets.begin(); iter2!=net->_symmetric_nets.end(); iter2++){
            string net2_name = (*iter2)->_concrete_net_name;
            NODE* net2_node = umap_net_node[net2_name];

            EDGE edge1, edge2;
            edge1._type = EdgeType::Net2Net;
            edge1._edge = pair<int, int>(net_node->_id, net2_node->_id);
            edge2._type = EdgeType::Net2Net;
            edge2._edge = pair<int, int>(net2_node->_id, net_node->_id);
            _net2net_edges_index.push_back(edge1);
            _net2net_edges_index.push_back(edge2);
        }

    }

};

void GRAPH::_Output_Graph(const char* path){

    // Device Nodes
    char filename [200];
    strcpy(filename, path);
    strcat(filename, "_device_nodes.csv");

    ofstream ofs;
    ofs.open(filename);

    if(!ofs.is_open()){
        cerr << "Could not open file: " << filename << endl;
        exit(0);
    }

    ofs << "id,area,sum_of_area_of_neighbor_device,height,width,device_type" << endl;
    for(list<NODE*>::iterator iter=_device_nodes.begin(); iter!=_device_nodes.end(); iter++){
        ofs << (*iter)->_id << "," << (*iter)->_area << "," << (*iter)->_sum_of_area_of_neighbor_device << "," << (*iter)->_height << ","\
            << (*iter)->_width << "," << (int)(*iter)->_device_type << endl;
    }

    ofs.close();

    // Net Nodes
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_net_nodes.csv");
    
    ofs.open(filename);
    if(!ofs.is_open()){
        cerr << "Could not open file: " << filename << endl;
        exit(0);
    }
    
    ofs << "id,is_symmetric_net,is_global_net,is_pin_net,degree,sum_of_degree_of_neighbor_nets,HPWL" << endl;
    for(list<NODE*>::iterator iter=_net_nodes.begin(); iter!=_net_nodes.end(); iter++){
        ofs << (*iter)->_id << ",";
        ofs << (*iter)->_is_symmetric_net << "," << (*iter)->_is_global_net << "," << (*iter)->_is_pin_net << "," \
            << (*iter)->_degree << "," << (*iter)->_sum_of_degree_of_neighbor_net << ",";
        ofs << (*iter)->_HPWL << endl;
    }

    ofs.close();

    // Net to Gate Edge Index
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_net2gate_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_net2gate_edges_index.begin(); iter!=_net2gate_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Net to Source Edge Index
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_net2source_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_net2source_edges_index.begin(); iter!=_net2source_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Net to Capacitor Edge Index
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_net2cap_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_net2cap_edges_index.begin(); iter!=_net2cap_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();


    // Net to Resistor
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_net2res_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_net2res_edges_index.begin(); iter!=_net2res_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Net to Net (Symmetric Net)
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_net2net_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_net2net_edges_index.begin(); iter!=_net2net_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Gate to Net
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_gate2net_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_gate2net_edges_index.begin(); iter!=_gate2net_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Source to Net 
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_source2net_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_source2net_edges_index.begin(); iter!=_source2net_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Capacitor to Net
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_cap2net_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_cap2net_edges_index.begin(); iter!=_cap2net_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();

    // Resistor to Net
    filename[0] = '\0';
    strcpy(filename, path);
    strcat(filename, "_res2net_edges.csv");
    
    ofs.open(filename);

    for(list<EDGE>::iterator iter=_res2net_edges_index.begin(); iter!=_res2net_edges_index.end(); iter++){
        ofs << iter->_edge.first << "," << iter->_edge.second << endl;
    }

    ofs.close();    

};
} // heterogeneous
