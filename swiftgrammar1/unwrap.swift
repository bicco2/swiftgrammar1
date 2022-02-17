//unwrap 옵셔널 변수

import Foundation

var someVariable : Int? // 엥 이거 자체가 nil 인거 같은데?
//?는 값이 있는지 없는지임을 말함 = 옵셔널 // 값이 없는 건 nil 이라고 함 출력될 때 옵셔널이라고 붙게 됨
if someVariable == nil {
    someVariable = 90
}
//print("someVariable: \(someVariable)")

if let otherVariable = someVariable { // someVariable에 값이 있으면 otherVariable 에 값을 넣어라 라는 뜻
  print("언래핑 됨(= 값이 있음) \(otherVariable)")
} else {
    print("값 x")
}

someVariable = nil

let myValue = someVariable ?? 10 // someVariable에 값이 없으면 10을 넣겠다는 것 : ??
print("myValue : \(myValue)")

var emptyVariable : Int?

myFunction(parameter: myValue)
myFunction(parameter: emptyVariable)

func myFunction(parameter: Int?){ // 위에 myFunction(parameter: myValue) 여기에서 parameter 쓰기 싫다하면 _ 추가
    print("myFunction() called")
    guard let unWrappedParam = parameter else {return} //위에 if let 과 같은 기능임
    print("unWrappedParam: \(unWrappedParam)")
}

