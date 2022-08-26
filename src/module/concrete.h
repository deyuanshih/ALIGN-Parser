#ifndef MODULE_CONCRETE_H
#define MODULE_CONCRETE_H

#include <iostream>
#include <fstream>
#include <list>
#include <unordered_map>


namespace concrete{

enum class DeviceType {
    Mos,
    Capacitor,
    Resistor,
    Basic_Block
};

typedef struct COORDINATE{
    double _x=0, _y=0;
} COORDINATE;

struct NET;

typedef struct LEAVE{ // all nets is io pin, no interconnect
    void reset() {
        _umap_net.clear();
    }
    // Info
    std::string _concrete_leave_name;
    std::string _abstract_name;
    // Parameters
    std::unordered_map<std::string, NET*> _umap_net; // fa map (pin, net)
    // Features
    DeviceType _device_type = DeviceType::Mos;
    int _is_symmetric = 0;
    double _width = 0, _height = 0;
    double _area = 0;
    // placement
    COORDINATE _loc; // x, y
} LEAVE;

typedef struct NET{
    void reset(){
        _umap_leave.clear();
        _gates.clear();
        _sources.clear();
        _capacitor.clear();
        _resistor.clear();
        _symmetric_nets.clear();
    }
    // Info
    std::string _concrete_net_name;
    // features
    int _is_symmetric = 0; // 0:none, 1:H, 2:V
    bool _is_global = false;
    bool _is_pin = false;
    // placement
    COORDINATE _loc; // x, y
    double _HPWL = 0;
    // connectivity
    std::unordered_map<std::string, LEAVE*> _umap_leave; // pin, net
    std::list<LEAVE*> _gates;
    std::list<LEAVE*> _sources; // source & drain
    std::list<LEAVE*> _capacitor;
    std::list<LEAVE*> _resistor;
    std::list<NET*> _symmetric_nets;
} NET;

typedef struct MODULE{ // some nets are interconnect, some nets are io pins
    void reset(){
        _umap_pin.clear();
        _umap_leave.clear();
        _umap_net.clear();
    }
    // Info 
    std::string _abstract_module_name;
    std::string _concrete_module_name;
    // parameters
    std::unordered_map<std::string, NET*> _umap_pin; // pin, net
    // instances and nets
    std::unordered_map<std::string, MODULE*> _umap_submodule;
    std::unordered_map<std::string, LEAVE*> _umap_leave;
    std::unordered_map<std::string, NET*> _umap_net; // net name, net
    // placement
    COORDINATE _offset;
    // features
    int _is_symmetric = 0;
    double _width = 0, _height = 0;
    double _area = 0;

} MODULE;


} // concrete

#endif