import Foundation

//딕셔너리 = 사물함 (key ,value로 이루어짐)

//키 : 값
var myFriends = ["bestFriend" : "bicco",
                 "hignSchool" : "nicco"
                ]

let myBestFriend = myFriends["bestFriend"] //키 값을 통해 값에 접근이 가능

let girlFriend = myFriends["girl", default : ""] // 만약 없는 키에 접근을 했을 때 nil이 아닌 다른 값으로 하고 싶을때 (=디폴트 사용)

//딕셔너리 내부의 키에 해당하는 값 변경
myFriends["bestFriend"] = "hoho"
//or
myFriends.updateValue("hop__o", forKey: "bestFriend")

//딕셔너리에 새로운 값 추가
myFriends["newFriend"] = "macbook"
//or
myFriends.updateValue("julia", forKey: "onlineFriend")


//딕셔너리 만드는 법1
let newDictionary : [String : Int] = [String : Int]()
// 생략 가능let newDictionary = [String : Int]()

//딕셔너리 만드는 법2
let new2Dictionary : [String : Int] = Dictionary<String, Int>()

