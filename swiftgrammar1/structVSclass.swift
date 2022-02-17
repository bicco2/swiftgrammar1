import Foundation

struct YoutuberStruct {
    var name : String
    var subCnt : Int
}

var devJin = YoutuberStruct(name:"bicco", subCnt : 99999)
var devJinClone = devJin

print("devJinClone.name : \(devJinClone.name)")
//여기서 devjin의 name을 바꾸면 clone은 바뀌지 않음 = 복사값임
print("devJin.name : \(devJin.name)")

//차이
//struct : 복사해서 사용하는 개념. 참조하는 값이 바뀌어도 기존 값에는 영향이 없음!
//class : 공유해서 사용하는 개념. 참조하는 값이 바뀌면 기존 값도 바뀜!


class Youtuber {
    var name : String
    var subCnt : Int
    //init으로 매개변수 가진 생성자 메소드를 만들어야 매개변수 넣고 객체생성가능
    init(name: String, subCnt : Int){ //init 즉 생성자 메소드로 값을 메모리에 넘겨줘야한다 .
        self.name = name
        self.subCnt = subCnt
    }
}

var Jin = Youtuber ( name : "bicco", subCnt : 99999)

var JinClone = Jin
print("class - jinclone.name : \(JinClone.name)")
JinClone.name = "hoho"

print("class  - jinclone.name : \(JinClone.name)")
print("class  - Jin.name : \(Jin.name)")
