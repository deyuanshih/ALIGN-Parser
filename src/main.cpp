#include "module/design.h"
#include "graph/graph.h"

#include <algorithm>
#include <string>

using namespace std;

/*
parameter:  design name
            schematric file path
            layout file path
            pdk file path
            --generate_layout
            --generate_graph
            graph_name
*/


int main(int argc, char** argv){

    string command = "";
    string design_name = string(argv[1]);
    string design_name_uppercase = design_name;
    transform(design_name_uppercase.begin(), design_name_uppercase.end(), design_name_uppercase.begin(), ::toupper);

    string schematic_file_path = string(argv[2]);
    string layout_file_path = string(argv[3]);
    string graph_file_path = string(argv[4]);
    string pdk_file_path = string(argv[5]);

    string generate_layout = string(argv[6]);
    string generate_graph = string(argv[7]);

    string graph_name = string(argv[8]);


    if (generate_layout == "--generate_layout") {
        command = "mkdir " + layout_file_path + design_name +  " && cd " + layout_file_path + design_name;
        cout << command << endl;
        system(command.c_str());
        
        command = "schematic2layout.py " + schematic_file_path + design_name + " -p " + pdk_file_path \
                    + " -w " + layout_file_path + design_name;
        cout << command << endl;
        system(command.c_str());
    }
        
    DESIGN design;
    if (generate_graph == "--generate_graph") {    
        
        string path = layout_file_path + design_name + "/3_pnr/inputs/" + design_name_uppercase + ".abstract_verilog.json";

        cout << "read verilog: " << path << endl;
        design._Read_Verilog(path.c_str(), design_name_uppercase);
        cout << "read verilog finished ..." << endl;

        path = layout_file_path + design_name + "/";
        cout << "read lef: " << path << endl;
        design._Read_Device_Size(path.c_str());
        cout << "read lef finished ..." << endl;
        design._Dump_LEF_Info();
        design._Apply_LEF_Info(path.c_str());

        cout << "read pl: " << path << endl;
        design._Read_Placement(path.c_str());
        cout << "read pl finished ..." << endl;
        design._Dump_Verilog_Info();

        design._Abstract_to_Concrete();
        design._Calculate_HPWL();
        cout << "Abstract to Concrete finished ..." << endl;
        design._Dump_Concrete_Info();

        heterogeneous::GRAPH graph;
        graph._Design_to_Graph(design);
        cout << "Graph Construction finished ..." << endl;
        path = graph_file_path + graph_name + "/";
        command = "mkdir " + path;
        system(command.c_str());
        path = path + graph_name;
        graph._Output_Graph(path.c_str());
    }

    return 0;
};
