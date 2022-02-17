import Foundation

struct MyArray<SomeElement>{
    //제네릭을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]()
    
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}


//struct Generic<T>{
//    //제네릭을 담은 빈 배열
//    var elements : [T] = [T]()
//
//    init(_ elements: [T]){
//        self.elements = elements
//    }
//}
//제네릭은 모든 타입이 들어 올 수 있고 타입 보다는 데이터 구조가 비슷하고 타입이 다를때 사용?


struct Friend{
    var name : String
}

struct PpakCoder{
    var name : String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray : \(mySomeArray)")

var myStringArray = MyArray(["가","나","다"])
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "맹구")

var myFriendsArray = MyArray([friend_01,friend_02,friend_03])
print("myFriendsArray : \(myFriendsArray)")
