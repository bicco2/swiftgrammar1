import Foundation


//연산프로퍼티 
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {//연산프로퍼티는 자신 말고 다른 저장프로퍼티의 값을 수정하는 용도인것 같다.
        get{
            return dollar * currencyRate
        }
        set{
            dollar = newValue / currencyRate //newValue 는 새로 들어온 값인가?
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000

print(moneyInMyPocket.won)

print(moneyInMyPocket.dollar)

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)






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
