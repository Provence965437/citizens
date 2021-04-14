rm -rf crypto-config
./bin/cryptogen generate --config=crypto-config.yaml
./bin/configtxgen --profile ProvenceGenesis -outputBlock ./artifacts/orderer.genesis.block -channelID provence
./bin/configtxgen --profile ProvenceChannel -outputCreateChannelTx ./artifacts/provence.tx -channelID provence1
./bin/configtxgen --profile ProvenceChannel -outputAnchorPeersUpdate ./artifacts/YJHmspanchors.tx -channelID provence1 -asOrg YJHMSP
./bin/configtxgen --profile ProvenceChannel -outputAnchorPeersUpdate ./artifacts/HYmspanchors.tx -channelID provence1 -asOrg HYMSP
