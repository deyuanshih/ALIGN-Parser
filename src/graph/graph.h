#ifndef GRAPH_GRAPH_H
#define GRAPH_GRAPH_H


#include <unordered_map>
#include <list>
#include <iostream>
#include <fstream>
#include <cmath>
#include <cstring>
#include <unordered_set>
#include "../module/design.h"

namespace concrete { enum class DeviceType; }
namespace heterogeneous {

enum class NodeType {
    NetNode,
    DeviceNode
};

enum class EdgeType {
    Net2Gate,
    Net2Source,
    Net2Cap,
    Net2Res,
    Net2Net, // Symmetric
    Gate2Net,
    Source2Net,
    Cap2Net,
    Res2Net
};

class NODE{
    public:
        
        //------------------- for both ----------------------//
        int _id;
        std::string _node_name;
        NodeType _type; // 0: net, 1: device
        std::list<NODE*> _neighbors;

        //------------------- for net node ------------------//
        int _is_symmetric_net; // 0: none, 1:V, 2:H
        bool _is_global_net;
        bool _is_pin_net;   
        int _degree;
        std::list<int> _degree_of_neighbor_net; // get summation, standard deviation
        int _sum_of_degree_of_neighbor_net;
        // target
        double _HPWL;
        //---------------------------------------------------//

        //------------------- for device node ------------------//
        concrete::DeviceType _device_type; // 0:MOS, 1:RES, 2:CAP, 4:BASICK BLOCK
        double _width, _height;
        double _area;
        std::list<double> _area_of_neighbor_device;
        double _sum_of_area_of_neighbor_device;
        //---------------------------------------------------//

};


class EDGE{

    public:
        EdgeType _type;
        std::pair<int, int> _edge;

};

class GRAPH{

    public:
        GRAPH(){};
        void _Design_to_Graph(DESIGN &design);
        void _Output_Graph(const char* path);
        int _num_device;
        int _num_net;
        std::list<NODE*> _device_nodes, _net_nodes;
        std::list<NODE*> _nodes;
        
        std::list<EDGE> _net2gate_edges_index;
        std::list<EDGE> _net2source_edges_index;
        std::list<EDGE> _net2cap_edges_index;
        std::list<EDGE> _net2res_edges_index;

        std::list<EDGE> _gate2net_edges_index;
        std::list<EDGE> _source2net_edges_index;
        std::list<EDGE> _cap2net_edges_index;
        std::list<EDGE> _res2net_edges_index;

        std::list<EDGE> _net2net_edges_index;

};
} // heterogeneous


#endif