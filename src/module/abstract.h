#ifndef MODULE_ABSTRACT_H
#define MODULE_ABSTRACT_H


#include <iostream>
#include <fstream>
#include <list>
#include <unordered_map>

// TODO: remove port "B" from SCM

namespace abstract{

typedef struct COORDINATE{
    double _x=0, _y=0;
} COORDINATE;

typedef struct{
    std::string _name="";
    double _area=0;
    double _width=0, _height=0;
} LEF_MODEL;

typedef struct SYMMETRIC_BLOCK{
    void _Get_Symmetric_Block(std::ifstream &ifs);
    std::pair<std::string, std::string> _symmetric_pair;
    int _direction; // 0:none, 1:H, 2:V, 3:self
} SYMMETRIC_BLOCK;

typedef struct SYMMETRIC_NET{
    void _Get_Symmetric_Net(std::ifstream &ifs);
    std::pair<std::string, std::string> _symmetric_pair;
    int _direction; // 0:none, 1:H, 2:V
} SYMMETRIC_NET;

class INSTANCE {

    public:
        INSTANCE(std::string instance_name="", std::string abstract_template_name="", double width=0.0, double height=0.0, int is_symmetric=0):
            _instance_name(instance_name), _abstract_template_name(abstract_template_name), _width(width), _height(height), _is_symmetric(is_symmetric)
            {_area = _width*_height;};
        
        // Info
        std::string _instance_name;
        std::string _abstract_template_name;     
        // fa_map: (pin, net)
        std::list<std::pair<std::string, std::string> > _net_list;
        // features
        int _is_symmetric;
        double _width, _height;
        double _area;
        // placement
        COORDINATE _loc; // x, y    

};

class NET{

    public:
        NET(std::string name="", bool is_global=false, bool is_pin=false, int is_symmetric=0, double hpwl=0): 
            _name(name), _is_global(is_global), _is_pin(is_pin), _is_symmetric(is_symmetric), _HPWL(hpwl){};
        
        // Info
        std::string _name;    
        // features
        int _is_symmetric; // 0:none, 1:H, 2:V
        bool _is_global;
        bool _is_pin;
        // pin info (non-pin net has loc (0, 0))
        COORDINATE _loc; // x, y
        // connectivity
        std::list<std::pair<std::string, std::string> > _cell_list; // pin, net   
        // placement
        double _HPWL;

};


class MODULE{
    
    public:    
        MODULE(){};

        void _Get_Module(std::ifstream &ifs);
        bool _Add_Instance(std::string instance_name, std::string abstract_template_name, double width, double height, int is_symmetric);
        bool _Add_Net(std::string net_name, bool is_global, bool is_pin, int is_symmetric, double hpwl);

        void _Get_Symmetric_Constraint(std::ifstream &ifs);
        void _Get_Symmetric_Net_List(std::ifstream &ifs);
        void _Get_Symmetric_Block_List(std::ifstream &ifs);
        void _Apply_Symmetric_Constraint();

        void _Get_Instance(std::ifstream &ifs);
        void _Get_Fa_Map(std::ifstream &ifs, INSTANCE &instance);

        // Info
        std::string _module_name;
        // parameters
        std::list<std::string> _pins;
        // instances and nets
        std::unordered_map<std::string, INSTANCE> _umap_instance;
        std::unordered_map<std::string, NET> _umap_net;
        // constraints
        std::list<SYMMETRIC_BLOCK> _symmetric_block_list;
        std::list<SYMMETRIC_NET> _symmetric_net_list;
        // placement
        //COORDINATE _offset;

};

}







#endif