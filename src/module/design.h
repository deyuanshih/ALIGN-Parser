#ifndef MODULE_DESIGN_H
#define MODULE_DESIGN_H

#include "abstract.h"
#include "concrete.h"

#include <iostream>
#include <fstream>
#include <unordered_map>
#include <list>
#include <cfloat>




class DESIGN{
    
    public:
        DESIGN(){};
        void _Read_Verilog(const char* filename, std::string& top_module_name);
        void _Read_Global_Net(std::ifstream &ifs);
        void _Dump_Verilog_Info();


        void _Read_Device_Size(const char* filename);
        void _Read_LEF_File(const char* filename, bool is_module);
        void _Apply_LEF_Info();
        void _Dump_LEF_Info();

        void _Read_Placement(const char* filename);
        void _Read_PL_File(const char* filename, abstract::MODULE &mod);


        void _Abstract_to_Concrete();
        void _Create_Module(abstract::INSTANCE &instance, concrete::MODULE* top_mod);
        void _Create_Leave(abstract::INSTANCE &instance, concrete::MODULE* top_mod);
        void _Dump_Concrete_Info();

        void _Calculate_HPWL();

        std::unordered_map<std::string, abstract::MODULE> _umap_abstract_module;
        std::unordered_map<std::string, abstract::NET> _umap_global_net;
        std::unordered_map<std::string, abstract::LEF_MODEL> _umap_lef;
        std::string _top_module_name;

        // concrete 
        std::unordered_map<std::string, concrete::MODULE*> _umap_concrete_module;
        std::unordered_map<std::string, concrete::LEAVE*> _umap_concrete_leave;
        std::unordered_map<std::string, concrete::NET*> _umap_concrete_net;

};

#endif