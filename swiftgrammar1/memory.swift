import Foundation

//생성자(class)를 만들면 메모리에 올라가게 된다. 클래스를 통해 객체를 만들어 객체를 메모리에 올림
class MyFriend {
    var name : String
    
    init(_ name : String = "이름 없음"){
        //_ 는 밑에 let myFriend = MyFriend("bicco") 라벨 생략에 쓰임 원래 : let myFriend = MyFriend(name:"bicco")
        self.name = name
        print("\(name)가 메모리에 올라갔다.")
    }
    
    deinit{//메모리가 사라짐 (할당 해제 됐을 때 실행 된다 .)
        print("메모리에서 사라짐 ")
    }
    //deinit 검증을 위한 코드
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destroySelf(object:MyFriend)
    {
        instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES{
            MyFriend.destroySelf(object: self)
        }
    }
    
}


let myFriend = MyFriend("bicco") //스트링이 들어오게 되면 init 에서 name 이 self.name = name 을 거치면서 bicco로 변함
let aFriend = MyFriend()

//let MemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque() 메모리 주소 값

weak var aFriendToBeDestoried = MyFriend("bicco")

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried!.call()
}else {
    print("xxxxxx")
}
