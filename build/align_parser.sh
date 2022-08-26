#!/bin/bash

SCRIPTPATH=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPTPATH`

DESIGN_NAME=""
LAYOUT_FILE_PATH=""
SCHEMATIC_FILE_PATH=""
GRAPH_FILE_PATH=""
PDK_FILE_PATH="/edahome/msedalab/deyuan/HPWL_Estimation/ALIGN-public/pdks/FinFET14nm_Mock_PDK/"
GRAPH_NAME=""

DEFAULT_LAYOUT_GENERATE="--no_generate_layout"
DEFAULT_GRAPH_GENERATE="--no_generate_graph"

for i in "$@"; do
  case $i in
    -d=*|--design=*)
      DESIGN_NAME="${i#*=}"
      shift # past argument=value
      ;;
    -l=*|--layout=*)
      LAYOUT_FILE_PATH="${i#*=}"
      shift # past argument=value
      ;;
    -s=*|--schematic=*)
      SCHEMATIC_FILE_PATH="${i#*=}"
      shift # past argument=value
      ;;
    -g=*|--graph=*)
      GRAPH_FILE_PATH="${i#*=}"
      shift # past argument=value
      ;;
    -p=*|--pdk=*)
      PDK_FILE_PATH="${i#*=}"
      shift # past argument=value
      ;;
    -gn=*|--graph_name=*)
      GRAPH_NAME="${i#*=}"
      shift # past argument=value
      ;;
    --layout_generator)
      DEFAULT_LAYOUT_GENERATE="--generate_layout"
      shift # past argument=value
      ;;
    --graph_generator)
      DEFAULT_GRAPH_GENERATE="--generate_graph"
      shift # past argument=value
      ;;
    --no_layout_generator)
      DEFAULT_LAYOUT_GENERATE="--no_generate_layout"
      shift # past argument=value
      ;;
    --no_graph_generator)
      DEFAULT_GRAPH_GENERATE="--no_generate_graph"
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

echo "DESIGN_NAME = ${DESIGN_NAME}"
echo "Layout file path = ${LAYOUT_FILE_PATH}"
echo "schematic file path = ${SCHEMATIC_FILE_PATH}"
echo "graph file path = ${GRAPH_FILE_PATH}"
echo "pdk file path = ${PDK_FILE_PATH}"


${SCRIPTPATH}/graph_generator ${DESIGN_NAME} ${SCHEMATIC_FILE_PATH} ${LAYOUT_FILE_PATH} ${GRAPH_FILE_PATH} ${PDK_FILE_PATH} ${DEFAULT_LAYOUT_GENERATE} ${DEFAULT_GRAPH_GENERATE} ${GRAPH_NAME}




  


