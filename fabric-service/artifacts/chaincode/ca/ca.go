// 基本属性：
// 公证书编号 改为 存证编号
// 公证类型 改为 存证类型
// 受理时间 改为 上链时间
// 增加 存证哈希和交易哈希
package main

import (
	"fmt"
	"log"

	"github.com/hyperledger/fabric-chaincode-go/shim"
	"github.com/hyperledger/fabric-protos-go/peer"
)

type saveca struct {
}

func (t *saveca) Init(stub shim.ChaincodeStubInterface) peer.Response {
	log.Println("Init SaveCA start")
	fun, args := stub.GetFunctionAndParameters()
	if fun != "init" {
		return shim.Error("function is not define")
	}
	if len(args) < 1 {
		return shim.Error("init func args number should be 1")
	}
	log.Printf("init func invoke succ,nothing happen")
	return shim.Success([]byte(fmt.Sprintf("init func invoke succ,you args is %v", args[0])))
}
func (t *saveca) Invoke(stub shim.ChaincodeStubInterface) peer.Response {
	log.Println("========Invoke========")
	fun, args := stub.GetFunctionAndParameters()
	log.Println("========GetFunctionAndParameters========", fun, len(args), args)
	switch fun {
	case "upcainfo":
		if len(args) != 2 {
			return shim.Error("func upcainfo need 2 args: CAID,jsondata")
		} else {
			return t.upinfo(stub, args)
		}
	case "queryinfoById":
		if len(args) != 1 {
			return shim.Error("func queryinfoById need 1 args: CAID,")
		} else {
			return t.queryinfoById(stub, args)
		}
	default:
		return shim.Error("func not define ,read help")
	}
}

func (t *saveca) upinfo(stub shim.ChaincodeStubInterface, args []string) peer.Response {
	key := args[0]
	val := args[1]
	if key == "" {
		return shim.Error("err: key could not be empty!")
	}
	err := stub.PutState(key, []byte(val))
	if err != nil {
		return shim.Error(fmt.Sprintf("upchain fialed, err:%v", err))
	}
	return shim.Success([]byte("upload succ!"))
}

func (t *saveca) queryinfoById(stub shim.ChaincodeStubInterface, args []string) peer.Response {
	caID := args[0]
	res, err := stub.GetState(caID)
	if err != nil {
		return shim.Error(fmt.Sprintf("query fialed, err:%v", err))
	}
	return shim.Success(res)
}
func main() {
	err := shim.Start(new(saveca))
	if err != nil {
		log.Println(err)
	}
}

