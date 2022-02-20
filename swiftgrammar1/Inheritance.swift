import Foundation
//상속
class Person {
    var name : String
    
    init(_ name : String){
        self.name = name
    }
    
    func sayHi(){
        print("hi i'm \(self.name)")
    }
}

class Warrior : Person { // Person을 상속 받음
    override init(_ name: String) {
        super.init("전사 "+name) // 부모 메서드 즉 person을 호출함 무조건 호출 해줘야함
    }
    
    override func sayHi() { //부모의 메서드를 그대로 가져옴 (변형 x )
        super.sayHi()
    }
}

let op = Person("bicco")

op.sayHi()

let opPlus = Warrior("nicco")

opPlus.sayHi()
