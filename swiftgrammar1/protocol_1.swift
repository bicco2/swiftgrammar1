import Foundation


// 프로토콜로 약속 한다.(프로토콜 임플리먼트라고 함 )
//원래 프로토콜은 로직을 넣을 수 없다 == 바디를 가질 수 없다== 추상메소드 개념
//그러나 extension 을 통해 바디를 넣을 순 있다
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


//프로토콜 확장 예시
//protocol Naming {
//    var lastName : String {get set}
//    var firstName : String {get set}
//    func getName() -> String
//}
//
//extension Naming{
//    func getFullName() -> String {
//        return self.lastName + " " + self.firstName
//    }
//}
//
//struct Friend :Naming {
//    var lastName : String
//    var firstName : String
//    func getName() -> String{
//        return self.lastName
//    }
//}
//
//let myFriend = Friend(lastName: "jin", firstName: "hoho")
//
//myFriend.getName()
//myFriend.getFullName()
