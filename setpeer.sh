
#!/bin/bash
export ORDERER_CA=/opt/ws/crypto-config/ordererOrganizations/banks.net/msp/tlscacerts/tlsca.banks.net-cert.pem

export CHANNEL_NAME="bankchannel"
if [ $# -lt 2 ];then
	echo "Usage : . setpeer.sh BankX|BankY| <peerid>"
fi
export peerId=$2

if [[ $1 = "BankX" ]];then
	echo "Setting to organization BankX peer "$peerId
	export CORE_PEER_ADDRESS=$peerId"xbank:7051"
	export CORE_PEER_LOCALMSPID=BankXMSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/xbank.net/peers/$peerId.xbank.net/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/xbank.net/peers/$peerId.xbank.net/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/xbank.net/peers/$peerId.xbank.net/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/xbank.net/users/Admin@xbank.net/msp
fi

if [[ $1 = "BankY" ]];then
	echo "Setting to organization BankY peer "$peerId
	export CORE_PEER_ADDRESS=$peerId"ybank:7051"
	export CORE_PEER_LOCALMSPID=BankYMSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/ybank.net/peers/$peerId.ybank.net/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/ybank.net/peers/$peerId.ybank.net/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/ybank.net/peers/$peerId.ybank.net/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/ybank.net/users/Admin@ybank.net/msp
fi

	