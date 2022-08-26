#include "abstract.h"


using namespace std;
namespace abstract{

void SYMMETRIC_NET::_Get_Symmetric_Net(ifstream &ifs){

    string input_line;
    bool is_create;
    char net1 [200], net2 [200], temp [200];

    ifs >> input_line >> input_line;
    sscanf(input_line.c_str(), "\"%[^\"]", net1);
    _symmetric_pair.first = string(net1);

    ifs >> input_line >> input_line;
    sscanf(input_line.c_str(), "\"%[^\"]", net2);
    _symmetric_pair.second = string(net2);

    while(1){
        ifs >> input_line;
        if(input_line.find("direction") != string::npos)
            break;
    }

    ifs >> input_line;
    sscanf(input_line.c_str(), "\"%[^\"]", temp);
    if(string(temp) == "V")
        _direction = 2;
    else
        _direction = 1;

    // ifs >> input_line; // "}"

};

void SYMMETRIC_BLOCK::_Get_Symmetric_Block(ifstream &ifs){

    string input_line;
    bool is_create;
    char block1 [200], block2 [200];

    // ifs >> input_line; // "["
    ifs >> input_line;
    sscanf(input_line.c_str(), "\"%[^\"]", block1);
    _symmetric_pair.first = string(block1);

    ifs >> input_line;
    if(input_line.find("]") != string::npos){
        _symmetric_pair.second = string(block1);
        return;
    }else{
        sscanf(input_line.c_str(), "\"%[^\"]", block2);
        _symmetric_pair.second = string(block2);
    }

    ifs >> input_line; // "]"
    if(input_line.find("]") == string::npos){
        cerr << "_Get_Symmetric_Block: Wrong Format: More than 2 instances " << endl;
        exit(0);
    }

};

bool MODULE::_Add_Net(string net_name, bool is_global, bool is_pin, int is_symmetric, double hpwl){
    if(_umap_net.find(net_name) == _umap_net.end()){
        NET new_net = NET(net_name, is_global, is_pin, is_symmetric, hpwl);
        _umap_net[net_name] = new_net;
        return true;
    }
    return false;
};

bool MODULE::_Add_Instance(string instance_name, string abstract_template_name, double width, double height, int is_symmetric){
    if(_umap_instance.find(instance_name) == _umap_instance.end()){
        INSTANCE new_instance = INSTANCE(instance_name, abstract_template_name, width, height, is_symmetric);
        _umap_instance[instance_name] = new_instance;
        return true;
    }
    return false;
};

void MODULE::_Get_Module(ifstream &ifs){
    
    int bracket_counter = 0;
    string input_line;

    // set io pin net
    ifs >> input_line;
    if(input_line.find("parameters") == string::npos){
        cerr << "_Get_Module: Wrong Format: No parameters " << endl;
        exit(0);
    }
    
    bracket_counter = 0;
    while(1){
        ifs >> input_line;
        if(input_line.find("]") != string::npos){
            bracket_counter -= 1;
            if(bracket_counter <= 0)
                break;
        }else if(input_line.find("[") != string::npos){
            bracket_counter += 1;
        }else{
            char temp [200];
            sscanf(input_line.c_str(), "\"%[^\"]", temp); 
            bool is_create = _Add_Net(string(temp), false, true, 0, 0.0);
            _pins.push_back(string(temp));
        }
    }

    //cout << "set pin net finished ... " << endl;


    // set symmetric nets
    ifs >> input_line;
    if(input_line.find("constraints") == string::npos){
        cerr << "_Get_Module: Wrong Format: No constraints " << endl;
        exit(0);
    }

    bracket_counter = 0;
    while(1){
        ifs >> input_line;
        if(input_line.find("]") != string::npos){
            bracket_counter -= 1;
            if(bracket_counter <= 0)
                break;
        }else if(input_line.find("[") != string::npos){
            bracket_counter += 1;
        }else if(input_line.find("{") != string::npos){
            _Get_Symmetric_Constraint(ifs);
        }else{
            cerr << "_Get_Module: Wrong Format: Read Constraints: " << input_line << endl;
            exit(0);
        }
    }

    //cout << "set symmetric constraint finished ... " << endl;


    // set instance and net
    ifs >> input_line;
    if(input_line.find("instances") == string::npos){
        cerr << "_Get_Module: Wrong Format: No instances " << endl;
        exit(0);
    }

    bracket_counter = 0;
    while(1){
        ifs >> input_line;

        if(input_line.find("]") != string::npos){
            bracket_counter -= 1;
            if(bracket_counter <= 0)
                break;
        }else if(input_line.find("[") != string::npos){
            bracket_counter += 1;
        }else if(input_line.find("{") != string::npos){
            _Get_Instance(ifs);
        }else{
            cerr << "_Get_Module: Wrong Format: Read Instance and Net: " << input_line << endl;
            exit(0);
        }

    }

    //cout << "set instance and net finished ... " << endl;

    // set leaves (skip)
    ifs >> input_line;
    if(input_line.find("leaves") == string::npos){
        cerr << "_Get_Module: Wrong Format: No leaves " << endl;
        exit(0);
    }

    bracket_counter = 0;
    while(1){
        ifs >> input_line;

        if(input_line.find("]") != string::npos){
            bracket_counter -= 1;
            if(bracket_counter <= 0)
                break;
        }else if(input_line.find("[") != string::npos){
            bracket_counter += 1;
        }
    }

    // cout << "set leaves finished ..." << endl;
    
    // set module name
    ifs >> input_line;
    if(input_line.find("name") == string::npos){
        cerr << "_Get_Module: Wrong Format: No names " << endl;
        exit(0);
    }

    ifs >> input_line;
    char module_name [200];
    sscanf(input_line.c_str(), "\"%[^\"]", module_name);
    _module_name = string(module_name);

    //cout << "set module name finished ... " << endl;

    ifs >> input_line; // "}"

    _Apply_Symmetric_Constraint();

};

void MODULE::_Get_Symmetric_Constraint(ifstream &ifs){

    string input_line;  
    int bracket_counter = 1;
    while(1){

        ifs >> input_line;
        if(input_line.find("}") != string::npos){
            bracket_counter -= 1;
            if(bracket_counter <= 0)
                break;
        }else if(input_line.find("{") != string::npos){
            bracket_counter += 1;
        }else if(input_line.find("symmetric_nets") != string::npos){
            _Get_Symmetric_Net_List(ifs);
        }else if(input_line.find("symmetric_blocks") != string::npos){
            _Get_Symmetric_Block_List(ifs);            
        }
    }

};

void MODULE::_Get_Symmetric_Net_List(ifstream &ifs){
    
    SYMMETRIC_NET symmetric_net;
    symmetric_net._Get_Symmetric_Net(ifs);
    _symmetric_net_list.push_back(symmetric_net);

};

void MODULE::_Get_Symmetric_Block_List(ifstream &ifs){
    
    string input_line;
    char temp [200];
    int direction;
    ifs >> input_line >> input_line; // "pairs" "["
    
    while(1){
        ifs >> input_line;
        if(input_line.find("[") != string::npos){
            SYMMETRIC_BLOCK symmetric_block;
            symmetric_block._Get_Symmetric_Block(ifs);
            _symmetric_block_list.push_back(symmetric_block);
        }else if(input_line.find("]") != string::npos){
            break;
        }else{
            cerr << "_Get_Symmetric_Block_List: Wrong Format: " << input_line << endl;
            exit(0);
        }
    }

    ifs >> input_line;
    if(input_line.find("direction") == string::npos){
        cerr << "_Get_Symmetric_Block_List: No direction" << endl;
    }

    ifs >> input_line;
    sscanf(input_line.c_str(), "\"%[^\"]", temp);
    if(string(temp) == "V")
        direction = 2;
    else
        direction = 1;
    
    for(list<SYMMETRIC_BLOCK>::iterator iter=_symmetric_block_list.begin(); iter!=_symmetric_block_list.end(); iter++){
        if(iter->_symmetric_pair.first == iter->_symmetric_pair.second)
            iter->_direction = 3; // self sym
        else
            iter->_direction = direction;
    }

    // ifs >> input_line; // "}"

};

void MODULE::_Get_Instance(ifstream &ifs){

    string input_line;
    INSTANCE instance;

    while(1){

        ifs >> input_line;

        if(input_line.find("}") != string::npos){
            break;
        }else if(input_line.find("instance_name") != string::npos){

            ifs >> input_line;
            char temp[200];
            sscanf(input_line.c_str(), "\"%[^\"]", temp);
            bool is_create = _Add_Instance(string(temp), "", 0.0, 0.0, 0);
            instance = _umap_instance[string(temp)];

        }else if(input_line.find("abstract_template_name") != string::npos){
            
            ifs >> input_line;
            char temp[200];
            sscanf(input_line.c_str(), "\"%[^\"]", temp);
            instance._abstract_template_name = string(temp);

        }else if(input_line.find("fa_map") != string::npos){

            _Get_Fa_Map(ifs, instance);

        }
    }
    
    _umap_instance[instance._instance_name] = instance;
    
};

void MODULE::_Get_Fa_Map(ifstream &ifs, INSTANCE &instance){

    string input_line;
    pair<string, string> pin_to_net;  // pin, net
    string pin_name, net_name;
    while(1){

        ifs >> input_line;
        if(input_line.find("[") != string::npos){
            continue;
        }else if(input_line.find("]") != string::npos){
            break;
        }else if(input_line.find("formal") != string::npos){
            
            ifs >> input_line;
            char temp [200];
            sscanf(input_line.c_str(), "\"%[^\"]", temp);
            pin_name = string(temp);
            pin_to_net.first = pin_name;

        }else if(input_line.find("actual") != string::npos){

            ifs >> input_line;
            char temp [200];
            sscanf(input_line.c_str(), "\"%[^\"]", temp);
            net_name = string(temp);
                
            bool is_create = _Add_Net(net_name, false, false, 0, 0.0);
            pin_to_net.second = net_name;
            instance._net_list.push_back(pin_to_net);

            pair<string, string> pin_to_instance;
            pin_to_instance.first = pin_name; // pin
            pin_to_instance.second = instance._instance_name; // instance
            _umap_net[net_name]._cell_list.push_back(pin_to_instance);

        }

    }

};

void MODULE::_Apply_Symmetric_Constraint(){

    for(list<SYMMETRIC_BLOCK>::iterator iter1=_symmetric_block_list.begin(); iter1!=_symmetric_block_list.end(); iter1++){
        SYMMETRIC_BLOCK sym_block = (*iter1);
        _umap_instance[sym_block._symmetric_pair.first]._is_symmetric = sym_block._direction;
        _umap_instance[sym_block._symmetric_pair.second]._is_symmetric = sym_block._direction;
    }

    for(list<SYMMETRIC_NET>::iterator iter1=_symmetric_net_list.begin(); iter1!=_symmetric_net_list.end(); iter1++){
        SYMMETRIC_NET sym_net = (*iter1);
        _umap_net[sym_net._symmetric_pair.first]._is_symmetric = sym_net._direction;
        _umap_net[sym_net._symmetric_pair.second]._is_symmetric = sym_net._direction;
    }

};

} // abstract
