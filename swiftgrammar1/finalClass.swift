//final class >> 상속이 안되게 하는 것
import Foundation

final class Friend {
    var name : String
    init(name : String){
        self.name = name
    }
}

class BestFriend : Friend{
    override init(name : String){
        super.init(name: "베프" + name)
    }
}

let myFriend = Friend(name: "bicco")
let myBestFriend = BestFriend(name: "nico")
