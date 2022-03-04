import Foundation
//옵셔널 왜 필요함 ?
//효율적인 코딩이 가능하고 예외상황을 최소화하는 안전한 코딩이 가능 하다 .
//!와 ? 로 표현 가능
//! : 암시적 추출 옵셔널  >> 얘는 기존 변수처럼 사용이 가능하지만  (그니까 !로 설정하면 그 값에 10 이 들어와도 다른 변수와 연산이 가능 )
//? : 옵셔널은 >> 기존 변수처럼 사용이 불가능 함 (?로 설정하면 이 변수는 그냥 옵셔널이라는 변수가 돼서 다른 변수와 연산이 불가능)

//(enum + general) 옵셔널은 이 두개의 타입을 섞어 갖고 있다.
enum Optional<T>{
    case None (nil)
    case Some(T)
}


//옵셔널 바인딩 : 옵셔널 값을 꺼내오는 방법 중 하나로 nil 체크, 안전한 값 추출을 함
var myName : String! = "yagom"
var yourName : String! = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

yourName = "haha"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

//------------------------------------------------------
//옵셔널 강제추출. : 옵셔널 변수에 ! 를 주면 강제 추출이 된다 .(단, nil값을 강제추출하면 런타임 오류)  === 암시적추출옵셔널 //추천xxxxxx
func printName(_ name: String){
    print(name)
}

var mmm : String? = "dmddo"

printName(mmm!)

//------------------------------------------------------
//optional : ?? >> default 값 설정하고 싶을 때 하는 콛 ㅡ
let s:String?

if s != nil{
    s = "not nil "
} else{
    s = " "
}

//==

s = "not nil" ?? " "
