//매개변수 inout >> 함수의 매개변수는 let이라서 재할당이 불가능함 따라서 변수에 inout을 넣으면 바꾸기 가능
import Foundation

func sayName(_ name: String){
    print("hi i am \(name)")
}

func sayHi(_ name: inout String){
    name = "fucking " + name
    print("hi i am \(name)")
}

sayName("bicco")

var name22 = "bicco2"

sayHi(&name22) //&를 꼭 붙여줘야한다. inout 변수는
