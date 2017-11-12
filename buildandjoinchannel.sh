
#!/bin/bash -e

. setpeer.sh BankX peer0

peer channel create -o orderer:7050 -c $CHANNEL_NAME -f ./bankchannel.tx --tls true --cafile $ORDERER_CA 


. setpeer.sh BankX peer0
peer channel join -b $CHANNEL_NAME.block



. setpeer.sh BankY peer0
peer channel join -b $CHANNEL_NAME.block


