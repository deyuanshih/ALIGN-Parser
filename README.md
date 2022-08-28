# ALIGN-Parser

## Pre-Requirement:
1. Install ALIGN layout generator from https://github.com/ALIGN-analoglayout/ALIGN-public
2.     source ${ALIGN-public_dir}/general/bin/activate

## Build ALIGN_Parser:
1.     make

##  Run Parser:
run build/align_parser.sh to compile the .sp file to cooresponding layout by ALIGN, and translate the layout information into graph

    build/align_parser.sh -d=$DESIGN_NAME -s=$SCHEMATIC_FILE_PATH -l=$LAYOUT_FILE_PATH -g=GRAPH_FILE_PATH -p=PDK_FILE_PATH -gn=GRAPH_NAME --layout_generator --graph_generator

## Options:
1. -d: Design Folder name, which should be the same as the design circuit name
2. -s: ALIGN will look for the folder of schematic design in this path, 
3. -l: ALIGN will generated layout file in this path or the parser will look for the folder of layout file in this path
4. -g: Parser will generate graph file in this path
5. -p: ${ALIGN-public_dir}/pdks/FinFET14nm_Mock_PDK/
6. -gn:name of the graph-related file
7. --layout_generator: add this option if you want to generate the layout by ALIGN
8. --graph_generator: add this option if you want to translate layout information into graph file

## Example: 
    build/align_parser.sh -d=adder -s=ALIGN-Parser/Dataset/schematic_design/ALIGN2x/ -l=ALIGN-Parser/Dataset/layout_design/ALIGN2x/ -g=ALIGN-Parser/Dataset/graph_design/ALIGN2x/ -gn=graph01 --layout_generator --graph_generator

## Scripts
the scripts in build/scripts will turn all the schematic design in the particular folder into layout and graph automatically

    Ex: build/scripts/ALIGN.sh --layout_generator --graph_generator
    
it will turn all the design in Dataset/schematic_design/ALIGN/ into layout and graph in Dataset/layout_design/ALGIN/ and Dataset/graph_design/ALIGN respectively

## Input
the designs in Dataset/schematic_design are from:

https://github.com/ALIGN-analoglayout/ALIGN-public

https://github.com/magical-eda/MAGICAL-CIRCUITS

the designs have been modifed in order to make use of ALIGN layout generator

the graph data is in Dataset/Data 

## Output
the align_parser.sh will generate 3 file: Concrete_Info.log, LEF_Info.log, Verilog_Info.log

They are the parsing result of the layout file
