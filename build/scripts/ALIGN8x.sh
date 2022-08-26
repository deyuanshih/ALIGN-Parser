#!/bin/bash

#size=57
#ALIGN   1x    V  0*5   ~ 56*5
#ALIGN   2x    V  0*5+1 ~ 56*5+1
#ALIGN   4x    V  0*5+2 ~ 56*5+2
#ALIGN   8x    V  0*5+3 ~ 56*5+3
#ALIGN   16x   V  0*5+4 ~ 56*5+4

#size=17
#MAGICAL 1x    V  57*5   ~ 74*5
#MAGICAL 2x    V  57*5+1 ~ 74*5+1 
#MAGICAL 4x    V  57*5+2 ~ 74*5+2
#MAGICAL 8x    V  57*5+3 ~ 74*5+3
#MAGICAL 16x   V  57*5+4 ~ 74*5+4

SCRIPTPATH=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPTPATH`
SCRIPTPATH=`dirname $SCRIPTPATH`
DATASETPATH=`dirname $SCRIPTPATH`

LAYOUT_FILE_PATH="${DATASETPATH}/Dataset/layout_design/ALIGN8x/"
SCHEMATIC_FILE_PATH="${DATASETPATH}/Dataset/schematic_design/ALIGN8x/"
GRAPH_FILE_PATH="${DATASETPATH}/Dataset/graph_design/ALIGN8x/"
GRAPH_NAME=""

DEFAULT_LAYOUT_GENERATE="--no_layout_generator"
DEFAULT_GRAPH_GENERATE="--no_graph_generator"

for i in "$@"; do
  case $i in
    --layout_generator)
      DEFAULT_LAYOUT_GENERATE="--layout_generator"
      shift # past argument=value
      ;;
    --graph_generator)
      DEFAULT_GRAPH_GENERATE="--graph_generator"
      shift # past argument=value
      ;;
    -*|--*)
      echo "Unknown option $i"
      exit 1
      ;;
    *)
      ;;
  esac
done

filename="${DATASETPATH}/Dataset/schematic_design_list_ALIGN.txt"
n=0
i=0
while read line || [ -n "$line" ]; do
# reading each line
echo "Line No. $i : $line"
n=$((i*5+3))
${SCRIPTPATH}/align_parser.sh -d=$line -l=$LAYOUT_FILE_PATH -s=$SCHEMATIC_FILE_PATH -g=$GRAPH_FILE_PATH $DEFAULT_GRAPH_GENERATE $DEFAULT_LAYOUT_GENERATE -gn=graph$n
i=$((i+1))
done < $filename

rm -rf $PWD/LOG/
rm -rf $PWD/__placements_to_run__.json