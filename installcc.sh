#!/bin/bash
if [[ -z "$1" || -z "$2" ||  -z "$3" ]];then
	echo "Invalid inputs "
	echo "Correct usage:"
	echo ". installcc.sh <chain code id> <chain code version> <path to chain code root>"
	echo ". installcc.sh bt 1.0 github.com/bt" 
else
	echo "Chaincode ID:$1 "
	echo "Chaincode Version:$2"
	echo "Chaincode Path:$3"
	peer chaincode install -n $1 -v $2 -p $3
fi

