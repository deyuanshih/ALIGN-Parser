#include "design.h"

using namespace std;



// -----------------------------------------------------//
// Verilog Design
// -----------------------------------------------------//

void DESIGN::_Read_Global_Net(ifstream &ifs){

    string input_line;
    while(1){
        ifs >> input_line;
        if(input_line.find("actual") != string::npos){
            ifs >> input_line;
            char global_net_name [200];
            sscanf(input_line.c_str(), "\"%[^\"]", global_net_name);

            abstract::NET global_net = abstract::NET(string(global_net_name), true, false, 0, 0);
            _umap_global_net[string(global_net_name)] = global_net;

            for(unordered_map<string, abstract::MODULE>::iterator iter=_umap_abstract_module.begin(); iter!=_umap_abstract_module.end(); iter++){
                if(iter->second._umap_net.find(string(global_net_name)) != iter->second._umap_net.end()){
                    iter->second._umap_net[string(global_net_name)]._is_global = true;
                }
            }
        }else if(input_line.find("}") != string::npos){
            break;
        }
    }

};

void DESIGN::_Read_Verilog(const char* filename, string& top_module_name){

    ifstream ifs;
    string input_line;
    ifs.open(filename);
    if(!ifs.is_open()){
        cerr << "Could not open file: " << filename << endl;
        exit(0);
    }

    // initialization
    _umap_abstract_module = unordered_map<string, abstract::MODULE>();
    _top_module_name = top_module_name;

    // set module
    ifs >> input_line >> input_line;
    if(input_line.find("modules") == string::npos){
        cerr << "_Read_Verilog: Wrong Format: No modules " << endl;
        exit(0);
    }

    int bracket_counter = 0;
    while(1){
        ifs >> input_line;
        if(input_line.find("]") != string::npos){
            bracket_counter -= 1;
            if(bracket_counter <= 0)
                break;
        }else if(input_line.find("[") != string::npos){
            bracket_counter += 1;
        }else if(input_line.find("{") != string::npos){
            abstract::MODULE mod;
            mod._Get_Module(ifs);
            _umap_abstract_module[mod._module_name] = mod;
        }else{
            cerr << "_Read_Verilog: Wrong Format: Read Modules: " << input_line << endl;
            exit(0);
        }
    }


    // set global signals
    while(1){
        ifs >> input_line;
        if(input_line.find("global_signals") != string::npos)
            break;        
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
            _Read_Global_Net(ifs);
        }else{
            cerr << "_Read_Verilog: Wrong Format: Read Global Signals: " << input_line << endl;
            exit(0);
        }
    }
    
    ifs.close();

};

void DESIGN::_Dump_Verilog_Info(){

    ofstream ofs;
    ofs.open("Verilog_Info.log");
    if(!ofs.is_open()){
        cerr << "Could not open file: Verilog_Info.log" << endl;
        exit(0);
    }

    for(unordered_map<string, abstract::MODULE>::iterator iter1=_umap_abstract_module.begin(); iter1!=_umap_abstract_module.end(); iter1++){

        abstract::MODULE mod = iter1->second;
        ofs << "Module name: " << mod._module_name << endl;
        
        ofs << "Parameters: " << endl;
        ofs << "[ ";
        for(list<string>::iterator iter2=mod._pins.begin(); iter2!=mod._pins.end(); iter2++){
            ofs << *iter2 << " ";
        }
        ofs << "]" << endl;

        ofs <<  "Instances: " << endl;
        for(unordered_map<string, abstract::INSTANCE>::iterator iter2=mod._umap_instance.begin(); iter2!=mod._umap_instance.end(); iter2++){
            abstract::INSTANCE instance = iter2->second;
            ofs << "\tInstance Name: " << instance._instance_name << endl;
            ofs << "\tabstract template name: " << instance._abstract_template_name << endl;
            ofs << "\tnetlist: " << endl;
            for(list<pair<string, string> >::iterator iter3=instance._net_list.begin(); iter3!=instance._net_list.end(); iter3++){
                ofs << "\t\tPin=" << iter3->first << " Net=" << iter3->second << endl;
            }
            ofs << "\tis symmetric: " << instance._is_symmetric << endl;
            ofs << "\twidth: " << instance._width << " height: " << instance._height << endl;
            ofs << "\tloc: (" << instance._loc._x << ", " << instance._loc._y << ")" << endl;
        }
        
    }

    ofs << "Global Nets: " << endl;
    for(unordered_map<string, abstract::NET>::iterator iter1=_umap_global_net.begin(); iter1!=_umap_global_net.end(); iter1++){
        ofs << "\t" << iter1->second._name << endl;
    }

    ofs.close();

};

// -----------------------------------------------------//
// Device Size
// -----------------------------------------------------//

void DESIGN::_Read_Device_Size(const char* path){
    
    string filename = string(path) + "3_pnr/inputs/" + _top_module_name + ".lef";
    cout << "read lef file: " << filename << endl;
    _Read_LEF_File(filename.c_str(), false);

    for(unordered_map<string, abstract::MODULE>::iterator iter1=_umap_abstract_module.begin(); iter1!=_umap_abstract_module.end(); iter1++){
        string module_name = iter1->second._module_name;
        if(module_name == _top_module_name){
            filename = string(path) + "3_pnr/Results/" + module_name + "_0.lef";
            cout << "read lef file: " << filename << endl;
            _Read_LEF_File(filename.c_str(), true);
        }else{
            filename = string(path) + "3_pnr/Results/" + module_name + "_0_0.lef";
            cout << "read lef file: " << filename << endl;
            _Read_LEF_File(filename.c_str(), true);
        }
    }

};

void DESIGN::_Read_LEF_File(const char* filename, bool is_module){

    ifstream ifs;
    ifs.open(filename);
    if(!ifs.is_open()){
        cerr << "Could not open file: " << filename << endl;
        exit(0);
    }

    string input_line;
    string concrete_template_name;
    double X;
    double Y;

    while(1){

        while(1){
            ifs >> input_line;
            if(input_line.find("MACRO") != string::npos)
                break;
            else if(ifs.eof())
                break;
        }  

        if(ifs.eof())
            break;

        ifs >> concrete_template_name;

        while(1){
            ifs >> input_line;
            if(input_line.find("SIZE") != string::npos && input_line.find("SIZED") == string::npos)
                break;
        }

        ifs >> X >> input_line >> Y; // "X BY Y"
        if(is_module == true){
            X = 1000*X;
            Y = 1000*Y;
        }

        _umap_lef[concrete_template_name]._name = concrete_template_name;
        _umap_lef[concrete_template_name]._area = (2*X)*(2*Y);
        _umap_lef[concrete_template_name]._width = 2*X;
        _umap_lef[concrete_template_name]._height = 2*Y;        

    }

    ifs.close();

};

void DESIGN::_Dump_LEF_Info(){
    
    ofstream ofs;
    ofs.open("LEF_Info.log");
    if(!ofs.is_open()){
        cerr << "Could not open file: LEF_Info.log" << endl;
        exit(0);
    }


    for(unordered_map<string, abstract::LEF_MODEL>::iterator iter1=_umap_lef.begin(); iter1!=_umap_lef.end(); iter1++){
        abstract::LEF_MODEL lef = iter1->second;
        ofs << "Model Name: " << lef._name << endl;
        ofs << "\tWidth: " << lef._width << " / Height: " << lef._height << endl;
        ofs << "\tArea: " << lef._area << endl; 
    }

    ofs.close();

};

void DESIGN::_Apply_LEF_Info(){

    for(unordered_map<string, abstract::MODULE>::iterator iter1=_umap_abstract_module.begin(); iter1!=_umap_abstract_module.end(); iter1++){
        for(unordered_map<string, abstract::INSTANCE>::iterator iter2=iter1->second._umap_instance.begin(); iter2!=iter1->second._umap_instance.end(); iter2++){
            abstract::LEF_MODEL lef = _umap_lef[iter2->second._abstract_template_name];
            iter2->second._width = lef._width;
            iter2->second._height = lef._height;
            iter2->second._area = lef._area;
        }
        
    }

};


// -----------------------------------------------------//
// Placement
// -----------------------------------------------------//


void DESIGN::_Read_Placement(const char* path){
    
    string filename;

    for(unordered_map<string, abstract::MODULE>::iterator iter1=_umap_abstract_module.begin(); iter1!=_umap_abstract_module.end(); iter1++){
        string module_name = iter1->second._module_name;
        filename = string(path) + "3_pnr/Results/" + module_name + "_0.pl";
        cout << "read pl file: " << filename << endl;
        _Read_PL_File(filename.c_str(), iter1->second);
    }

};

void DESIGN::_Read_PL_File(const char* filename, abstract::MODULE &mod){

    ifstream ifs;
    ifs.open(filename);
    if(!ifs.is_open()){
        cerr << "Could not open file: " << filename << endl;
        exit(0);
    }

    string input_line;
    double x, y;
    while(1){
        
        ifs >> input_line;

        if(mod._umap_instance.find(input_line) != mod._umap_instance.end()){
            string instance_name = input_line;
            ifs >> x >> y >> input_line;
            mod._umap_instance[instance_name]._loc._x = x;
            mod._umap_instance[instance_name]._loc._y = y;
        }else if(mod._umap_net.find(input_line) != mod._umap_net.end()){
            string net_name = input_line;
            ifs >> x >> y;
            mod._umap_net[net_name]._loc._x = x;
            mod._umap_net[net_name]._loc._y = y;
        }
            
        if(ifs.eof())
            break;
    }

    ifs.close();

};

void DESIGN::_Calculate_HPWL(){
    
    for(unordered_map<string, concrete::NET*>::iterator iter1=_umap_concrete_net.begin(); iter1!=_umap_concrete_net.end(); iter1++){
        
        concrete::NET* current_net = iter1->second;
        double max_x = -DBL_MAX, max_y = -DBL_MAX, min_x = DBL_MAX, min_y = DBL_MAX;
        for(unordered_map<string, concrete::LEAVE*>::iterator iter2=current_net->_umap_leave.begin(); iter2!=current_net->_umap_leave.end(); iter2++){
            concrete::LEAVE* current_leave = iter2->second;
            if(current_leave->_loc._x > max_x)
                max_x = current_leave->_loc._x;
            if(current_leave->_loc._x < min_x)
                min_x = current_leave->_loc._x;
            if(current_leave->_loc._y > max_y)
                max_y = current_leave->_loc._y;
            if(current_leave->_loc._y < min_y)
                min_y = current_leave->_loc._y;
        }

        if(current_net->_is_pin == true){
            if(current_net->_loc._x > max_x)
                max_x = current_net->_loc._x;
            if(current_net->_loc._x < min_x)
                min_x = current_net->_loc._x;
            if(current_net->_loc._y > max_y)
                max_y = current_net->_loc._y;
            if(current_net->_loc._y < min_y)
                min_y = current_net->_loc._y;
        }
        
        current_net->_HPWL = (max_x - min_x) + (max_y - min_y);

        if(current_net->_HPWL == 0 && current_net->_is_global == false){
            cerr << "Net has 0 HPWL: " << current_net->_concrete_net_name << endl;
            exit(0);
        }

    }

};
