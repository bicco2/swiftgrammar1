import Foundation

//String을 반환하는 클로저
let myName : String = {
    //myName 으로 들어간다 .
    return "나"
}()

print(myName)

//String을 받아서 String을 리턴하는 것 = 클로져 정의 , 클로져는 메소드다
let myRealName : (String) -> String = {(name :String) -> String in
    return "개발하는 \(name)"
}

print(myRealName("찐호"))

//String을 매개변수로 받아서 아무것도 리턴하지 않는다
let myRealNameLogic : (String) -> Void = { (name : String) in
    print("개발하는 \(name)")
}

myRealNameLogic("찐호롤ㄹ로")
