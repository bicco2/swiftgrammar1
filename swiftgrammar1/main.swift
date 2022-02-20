import Foundation

//매개변수로서의 클로저
func sayHi(completion: () -> Void){
    sleep(2)
    print("sayHi() called")

    completion()//print("2초가 지났다. 1")print("2초가 지났다. 2")print("2초가 지났다. 3")이 클로저임
}
//그니까 원래 sayhi라는 함수는 print("sayHi() called")만하는데 클로저 completion가 매개변수로 있어서
//밑에 함수 호출할때 매개변수 클로져에 내용을 입력하면 그게 적용되서 함수 안에 completion 클로저가 실행된다.


//메소드 호춟부에서 이벤트 종료를 알 수 있다.
//밑에 3가지는 생략 표현법
sayHi(completion: {
    print("2초가 지났다. 1")
})

sayHi(){
    print("2초가 지났다. 2")
}

sayHi{
    print("2초가 지났다. 3")
}

//----------------------------------------------------------------------------

//매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //클로져를 실행과 동시에 데이터 반환
    completion("오늘도 빡코딩!!")
}

sayHiWithName(completion: { (comment : String) in //튜플이라 함 
    print("2초 뒤에 그가 말했다! comment : ", comment)
})

//생략 표현
sayHiWithName(completion: { comment in
    print("2초 뒤에 그가 말했다! comment : ", comment)
})
sayHiWithName{ comment in
    print("2초 뒤에 그가 말했다! comment : ", comment)
}
sayHiWithName{
    print("2초 뒤에 그가 말했다! comment : ", $0)
}

//----------------------------------------------------------------------------

//매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //클로져를 실행과 동시에 데이터 반환
    completion("오늘도 빡코딩!!", "bicco")
}

sayHiWithFullName(completion: { (comment : String, name : String) in //튜플이라 함
    print("2초 뒤에 그가 말했다! comment : ", comment, name)
})


sayHiWithFullName{ comment,name in
    print("2초 뒤에 그가 말했다! comment : ", comment,name)
}
sayHiWithFullName{ _ ,name in //첫번째 매개변수를 사용하고 싶지 않을 때 _를 사용함으로써 사용 중지 할 수 있음
    print("2초 뒤에 그가 말했다! comment : ",name)
}
sayHiWithFullName{
    print("2초 뒤에 그가 말했다! comment : ", $0 ,$1)
}

//----------------------------------------------------------------------------

//옵셔널 클로저 무언가 받고 싶지 않을 때 사용(받을 순 있음 ) 유동적
func sayHiOptional(completion: (() -> Void)? = nil){
    print("sayHiOptional() called")
    sleep(2)
    //클로져를 실행과 동시에 데이터 반환
    completion?()
}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다.")
})

sayHiOptional{
    print("3초가 지났다.")
}


var myNumbers : [Int] = [0,1,2,3,4,5]

var transformedNumbers = myNumbers.map{ aNumber in
    return "숫자: \(aNumber)"
}

//var transformedNumbers = myNumbers.map{
//    return "숫자: \(aNumber)"
//}


//형태 변환 컬랙션에서 리턴 형식의 클로저가 많이 이용된다 .
