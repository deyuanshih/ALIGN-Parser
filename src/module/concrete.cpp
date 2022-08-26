#include "design.h"
#include "concrete.h"

using namespace std;


void DESIGN::_Create_Leave(abstract::INSTANCE &instance, concrete::MODULE* top_mod){
    
    // initiate concrete module
    concrete::LEAVE* con_leave = new concrete::LEAVE();
    con_leave->reset();

    // Info
    con_leave->_abstract_name = instance._abstract_template_name;
    con_leave->_concrete_leave_name = top_mod->_concrete_module_name + "/" + instance._instance_name;

    // features
    con_leave->_is_symmetric = instance._is_symmetric;
    con_leave->_width = instance._width;
    con_leave->_height = instance._height;
    con_leave->_area = instance._area;

    // placement
    con_leave->_loc._x = top_mod->_offset._x + instance._loc._x;
    con_leave->_loc._y = top_mod->_offset._x + instance._loc._y;
    
    top_mod->_umap_leave[con_leave->_concrete_leave_name] = con_leave;
    _umap_concrete_leave[con_leave->_concrete_leave_name] = con_leave;
    
    // connectivity
    for(list<pair<string, string> >::iterator iter1=instance._net_list.begin(); iter1!=instance._net_list.end(); iter1++){
        string net_name = con_leave->_concrete_leave_name + "/" + iter1->first;
        string top_net_name = top_mod->_concrete_module_name + "/" + iter1->second;
        
        con_leave->_umap_net[net_name] = top_mod->_umap_net[top_net_name];
        con_leave->_umap_net[net_name]->_umap_leave[con_leave->_concrete_leave_name] = con_leave;

        if(con_leave->_abstract_name.find("RES") != string::npos){
            con_leave->_umap_net[net_name]->_resistor.push_back(con_leave);
            con_leave->_device_type = concrete::DeviceType::Resistor;
        }else if(con_leave->_abstract_name.find("CAP") != string::npos){
            con_leave->_umap_net[net_name]->_capacitor.push_back(con_leave);
            con_leave->_device_type = concrete::DeviceType::Capacitor;
        }else {
            if(con_leave->_abstract_name.find("MOS") == (size_t)1)
                con_leave->_device_type = concrete::DeviceType::Mos;
            else
                con_leave->_device_type = concrete::DeviceType::Basic_Block;

            if(iter1->first.find("G") != string::npos)
                con_leave->_umap_net[net_name]->_gates.push_back(con_leave);
            else if(iter1->first.find("D") != string::npos || iter1->first.find("S") != string::npos)
                con_leave->_umap_net[net_name]->_sources.push_back(con_leave); 
            else {
                cerr << "_Create_Leave: Unknown Port: " << iter1->first << "(Ignore Bias)" << endl;
                if(iter1->first != "B")
                    exit(0);
            }
       }

    }

};

void DESIGN::_Create_Module(abstract::INSTANCE &instance, concrete::MODULE* top_mod){

    // initiate concrete module
    concrete::MODULE* con_mod = new concrete::MODULE();

    // module template
    abstract::MODULE abs_mod = _umap_abstract_module[instance._abstract_template_name];

    // Info
    con_mod->_abstract_module_name = instance._abstract_template_name;
    con_mod->_concrete_module_name = top_mod->_concrete_module_name + "/" + instance._instance_name;

    // features
    con_mod->_is_symmetric = instance._is_symmetric;
    con_mod->_width = instance._width;
    con_mod->_height = instance._height;
    con_mod->_area = instance._area;

    // placement
    con_mod->_offset._x = top_mod->_offset._x + instance._loc._x;
    con_mod->_offset._y = top_mod->_offset._x + instance._loc._y;

    top_mod->_umap_submodule[con_mod->_concrete_module_name] = con_mod;
    _umap_concrete_module[con_mod->_concrete_module_name] = con_mod;

    // connect pin to top_mod's nets
    for(list<pair<string, string> >::iterator iter1=instance._net_list.begin(); iter1!=instance._net_list.end(); iter1++){
        string net_name = con_mod->_concrete_module_name + "/" + iter1->first;
        string top_net_name = top_mod->_concrete_module_name + "/" + iter1->second;
        con_mod->_umap_net[net_name] = top_mod->_umap_net[top_net_name]; // pin net
    }

    // nets
    for(unordered_map<string, abstract::NET>::iterator iter1=abs_mod._umap_net.begin(); iter1!=abs_mod._umap_net.end(); iter1++){
        
        if(_umap_global_net.find(iter1->second._name) == _umap_global_net.end()){ // not global net
            string net_name = con_mod->_concrete_module_name + "/" + iter1->second._name;
            if(con_mod->_umap_net.find(net_name) == con_mod->_umap_net.end()){ //  not pin net
                
                concrete::NET* con_net = new concrete::NET();
                con_net->_concrete_net_name = net_name;
                con_net->_is_pin = false;
                con_net->_is_global = false;
                con_net->_is_symmetric = iter1->second._is_symmetric;
                con_net->_loc._x = 0;
                con_net->_loc._y = 0;

                con_mod->_umap_net[net_name] = con_net; // new net
                _umap_concrete_net[con_net->_concrete_net_name] = con_net;

            }
        }else{
            string net_name = con_mod->_concrete_module_name + "/" + iter1->second._name;
            con_mod->_umap_net[net_name] = _umap_concrete_net[iter1->second._name]; // global net
        }

    }

    // symmetric net
    for(list<abstract::SYMMETRIC_NET>::iterator iter1=abs_mod._symmetric_net_list.begin(); iter1!=abs_mod._symmetric_net_list.end(); iter1++){
        string source_net_name =  con_mod->_concrete_module_name + "/" + iter1->_symmetric_pair.first;
        string target_net_name = con_mod->_concrete_module_name + "/" + iter1->_symmetric_pair.second;
        con_mod->_umap_net[source_net_name]->_symmetric_nets.push_back(con_mod->_umap_net[target_net_name]);
        con_mod->_umap_net[target_net_name]->_symmetric_nets.push_back(con_mod->_umap_net[source_net_name]);
    }


    // submodules and leaves
    for(unordered_map<string, abstract::INSTANCE>::iterator iter1=abs_mod._umap_instance.begin(); iter1!=abs_mod._umap_instance.end(); iter1++){
        
        abstract::INSTANCE subinstance = iter1->second;
        string subinstance_abstract_name = iter1->second._abstract_template_name;
        if(_umap_abstract_module.find(subinstance_abstract_name) != _umap_abstract_module.end()){
            // create submodule
            _Create_Module(subinstance, con_mod);
        }else{
            // create leaves
            _Create_Leave(subinstance, con_mod);
        }

    }

};

void DESIGN::_Abstract_to_Concrete(){

    // initiate concrete module
    concrete::MODULE* top_con_mod = new concrete::MODULE();

    // info
    top_con_mod->_abstract_module_name = _top_module_name;
    top_con_mod->_concrete_module_name = _top_module_name;

    // no features for top module

    // placement
    top_con_mod->_offset._x = 0;
    top_con_mod->_offset._y = 0;
    
    abstract::MODULE abs_mod = _umap_abstract_module[_top_module_name];

    // global nets
    for(unordered_map<string, abstract::NET>::iterator iter1=_umap_global_net.begin(); iter1!=_umap_global_net.end(); iter1++){
        concrete::NET* con_net = new concrete::NET();
        // net info
        con_net->_concrete_net_name = iter1->second._name;
        // net features
        con_net->_is_pin = iter1->second._is_pin;
        con_net->_is_global = true;
        con_net->_is_symmetric = iter1->second._is_symmetric;
        con_net->_loc._x = iter1->second._loc._x;
        con_net->_loc._y = iter1->second._loc._y;
        
        _umap_concrete_net[con_net->_concrete_net_name] = con_net;
    }
    
    // nets
    for(unordered_map<string, abstract::NET>::iterator iter1=abs_mod._umap_net.begin(); iter1!=abs_mod._umap_net.end(); iter1++){
        
        if(_umap_global_net.find(iter1->second._name) == _umap_global_net.end()){ // not global nets
            concrete::NET* con_net = new concrete::NET();
            // net info
            string net_name = _top_module_name + "/" + iter1->second._name;
            con_net->_concrete_net_name = net_name;
            // net features
            con_net->_is_pin = iter1->second._is_pin;
            con_net->_is_global = false;
            con_net->_is_symmetric = iter1->second._is_symmetric;
            con_net->_loc._x = iter1->second._loc._x;
            con_net->_loc._y = iter1->second._loc._y;

            top_con_mod->_umap_net[con_net->_concrete_net_name] = con_net;
            _umap_concrete_net[con_net->_concrete_net_name] = con_net;
        }else{
            string net_name = _top_module_name + "/" + iter1->second._name;
            top_con_mod->_umap_net[net_name] = _umap_concrete_net[iter1->second._name]; // global net
        }
        
    }

    // symmetric net
    for(list<abstract::SYMMETRIC_NET>::iterator iter1=abs_mod._symmetric_net_list.begin(); iter1!=abs_mod._symmetric_net_list.end(); iter1++){
        string source_net_name =  _top_module_name + "/" + iter1->_symmetric_pair.first;
        string target_net_name = _top_module_name + "/" + iter1->_symmetric_pair.second;
        top_con_mod->_umap_net[source_net_name]->_symmetric_nets.push_back(top_con_mod->_umap_net[target_net_name]);
        top_con_mod->_umap_net[target_net_name]->_symmetric_nets.push_back(top_con_mod->_umap_net[source_net_name]);
    }

    
    // submodules and leaves
    for(unordered_map<string, abstract::INSTANCE>::iterator iter1=abs_mod._umap_instance.begin(); iter1!=abs_mod._umap_instance.end(); iter1++){
        
        abstract::INSTANCE subinstance = iter1->second;
        string subinstance_abstract_name = iter1->second._abstract_template_name;
        
        if(_umap_abstract_module.find(subinstance_abstract_name) != _umap_abstract_module.end()){
            // create submodule
            _Create_Module(subinstance, top_con_mod);
        }else{
            // create leaves
            _Create_Leave(subinstance, top_con_mod);
        }

    }
    
};

void DESIGN::_Dump_Concrete_Info(){

    ofstream ofs;
    ofs.open("Concrete_Info.log");
    if(!ofs.is_open()){
        cerr << "Could not open file: Concrete_Info.log" << endl;
        exit(0);
    }


    ofs << "Modules: " << endl;
    for(unordered_map<string, concrete::MODULE*>::iterator iter1=_umap_concrete_module.begin(); iter1!=_umap_concrete_module.end(); iter1++){
        ofs << "\tConcrete Name: " << iter1->second->_concrete_module_name << endl;
        ofs << "\tAbstract Name: " << iter1->second->_abstract_module_name << endl;
        ofs << "\tLoc: " << iter1->second->_offset._x << " / " << iter1->second->_offset._y << endl;
        
        concrete::MODULE* con_mod = iter1->second;
        ofs << "\tSubmodules: " << endl;
        for(unordered_map<string, concrete::MODULE*>::iterator iter2=con_mod->_umap_submodule.begin(); iter2!=con_mod->_umap_submodule.end(); iter2++){
            ofs << "\t\t" << iter2->second->_concrete_module_name << endl;
        }
        ofs << "\tLeaves: " << endl;
        for(unordered_map<string, concrete::LEAVE*>::iterator iter2=con_mod->_umap_leave.begin(); iter2!=con_mod->_umap_leave.end(); iter2++){
            ofs << "\t\t" << iter2->second->_concrete_leave_name << endl;
        }
    }

    ofs << "Leaves: " << endl;
    for(unordered_map<string, concrete::LEAVE*>::iterator iter1=_umap_concrete_leave.begin(); iter1!=_umap_concrete_leave.end(); iter1++){
        ofs << "\tConcrete Name: " << iter1->second->_concrete_leave_name << endl;
        ofs << "\tAbstract Name: " << iter1->second->_abstract_name << endl;
        ofs << "\tLoc: " << iter1->second->_loc._x << " / " << iter1->second->_loc._y << endl;
    }

    ofs << "Nets:" << endl;
    for(unordered_map<string, concrete::NET*>::iterator iter1=_umap_concrete_net.begin(); iter1!=_umap_concrete_net.end(); iter1++){
        ofs << "\tNet Name: " << iter1->second->_concrete_net_name << endl;
        ofs << "\tis pin: " << iter1->second->_is_pin << endl;
        ofs << "\tHPWL: " << iter1->second->_HPWL << endl;

        ofs << "\tConnected Leaves: " << endl;
        for(unordered_map<string, concrete::LEAVE*>::iterator iter2=iter1->second->_umap_leave.begin(); iter2!=iter1->second->_umap_leave.end(); iter2++){
            ofs << "\t\t" << iter2->second->_concrete_leave_name << endl;
        }
        ofs << "\tSymmetric group: " << endl;
        for(list<concrete::NET*>::iterator iter2=iter1->second->_symmetric_nets.begin(); iter2!=iter1->second->_symmetric_nets.end(); iter2++){
            ofs << "\t\t" << (*iter2)->_concrete_net_name << endl;
        }

    }


    ofs.close();
};

