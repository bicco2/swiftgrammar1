import Foundation


// 프로토콜로 약속 한다.(프로토콜 임플리먼트라고 함 )
protocol Naming {
    //우리는 이런 변수, 메소드를 가지고 있을 겁니다 라고 약속하는 거임
    var name : String {get set}
    func getName() -> String
    
}
protocol Aging{
    var age: Int{get set}
}

protocol UserNotifiable : Naming, Aging{
    
}

struct exFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        <#code#>
    }
    
    var age: Int
    
    
}


struct Friend : Naming{
    var name: String

    func getName() -> String {
        return "my friend : " + self.name
    }
}

var myFriend = Friend(name: "bicco")

print(myFriend.getName())
