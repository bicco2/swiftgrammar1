import Foundation

var myAge = 0 { //프로퍼티 옵저버라고 함. 값이 변경되기 전 과 이전에 행동을 할 수 있게 해줌
    willSet{ //값 저장 직전
        print("곧 설정할 거 / myage : \(myAge)")
    }
    didSet{// 값 저장 후
        print("설정됨 / didSet : \(myAge)")
    }
}

print("myAge:\(myAge)")

myAge = 20
