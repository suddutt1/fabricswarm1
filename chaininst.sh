#!/bin/bash

if [[ ! -z "$1" && ! -z "$2" ]]; then 
     peer chaincode instantiate -o orderer:7050 --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA -C $CHANNEL_NAME -n $1 -v $2 -c '{"Args":["init","A","100","B","200"]}' -P "OR ('BankXMSP.member','BankYMSP.member')"
else
     echo "Usgae : . chaininst.sh <chain code> <version>"
     echo ". chaininst.sh bt 1.0" 
	
fi


