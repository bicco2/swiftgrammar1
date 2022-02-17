import Foundation

func myFuction(tt : String) -> String{
    return "hi? i'm \(tt)"
}


func myFuctionSecond(myName name : String) -> String{ // 매개변수 이름 바꿔서 호출 가능 -> 굳이 왜함?
    return "hi? i'm \(name)"
}

func myFuctionThird(_ name : String) -> String{ //매개변수 이름 없이 호출 가능
    return "hi? i'm \(name)"
}

print(myFuction(tt: "bicco"))
print(myFuctionSecond(myName: "Secondbicco"))
print(myFuctionThird("Thirdbicco"))
