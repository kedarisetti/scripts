#!/bin/bash


#Defaults
SCRIPT_NAME=$0



usage(){
    echo "usage: $SCRIPT_NAME [options] instance"
    exit 1
}

help () {
    echo "This is a template script to help out with script development"
    echo
    echo "usage: $SCRIPT_NAME -h"
    echo "       $SCRIPT_NAME [options] instance"
    echo
    echo " required:"
    echo "     instance      instance to run the script on"
    echo
    echo "options:"
    echo "     -h help       list options for running the script"
    echo
    exit 0
}

# Parse optional args
while getopts ":hv:" opt
do
  case "${opt}" in
    h)
      help
      ;;
    : )
      usage
      ;;
    * )
      usage
      ;;
  esac
done
shift $((OPTIND-1))

# Parse Required args
INSTANCE=$1
shift
if [ -z $INSTANCE]
then 
  usage
fi

