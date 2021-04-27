export CORE_PEER_LOCALMSPID=YJHMSP
 export CORE_PEER_ADDRESS="peer0.yjh.provence.com:7051"
 export ORE_PEER_TLS_ROOTCERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/yjh.provence.com/peers/peer0.yjh.provence.com/tls/ca.crt"
 export CORE_PEER_TLS_CERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/yjh.provence.com/peers/peer0.yjh.provence.com/tls/server.crt"
export  CORE_PEER_MSPCONFIGPATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/yjh.provence.com/users/Admin@yjh.provence.com/msp"

peer lifecycle chaincode install ../artifacts/chaincode/ca.tar.gz

export CORE_PEER_LOCALMSPID=YJHMSP
 export CORE_PEER_ADDRESS="peer1.yjh.provence.com:7051"
 export ORE_PEER_TLS_ROOTCERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/yjh.provence.com/peers/peer1.yjh.provence.com/tls/ca.crt"
 export CORE_PEER_TLS_CERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/yjh.provence.com/peers/peer1.yjh.provence.com/tls/server.crt"
export  CORE_PEER_MSPCONFIGPATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/yjh.provence.com/users/Admin@yjh.provence.com/msp"

peer lifecycle chaincode install ../artifacts/chaincode/ca.tar.gz

export CORE_PEER_LOCALMSPID=HYMSP
export CORE_PEER_ADDRESS="peer0.hy.provence.com:7051"
export CORE_PEER_TLS_ROOTCERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/hy.provence.com/peers/peer0.hy.provence.com/tls/ca.crt"
 export CORE_PEER_TLS_CERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/hy.provence.com/peers/peer0.hy.provence.com/tls/server.crt"
export  CORE_PEER_MSPCONFIGPATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/hy.provence.com/users/Admin@hy.provence.com/msp"

peer lifecycle chaincode install ../artifacts/chaincode/ca.tar.gz

export CORE_PEER_LOCALMSPID=HYMSP
 export CORE_PEER_ADDRESS="peer1.hy.provence.com:7051"
 export CORE_PEER_TLS_ROOTCERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/hy.provence.com/peers/peer1.hy.provence.com/tls/ca.crt"
export CORE_PEER_TLS_CERT_FILE="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/hy.provence.com/peers/peer1.hy.provence.com/tls/server.crt"
export  CORE_PEER_MSPCONFIGPATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/hy.provence.com/users/Admin@hy.provence.com/msp"

peer lifecycle chaincode install ../artifacts/chaincode/ca.tar.gz
