import Foundation
//---------------------struct---------------------

struct YoutuberStruct { //생성자가 자동 생성 된다.
    var name : String
    var subCnt : Int
    
    mutating func changeName(newName : String){
        self.name = newName //이거 안된다. struct에서는 왜??
        //struct는 값 자체여서 안됨 ? class는 참조값이라 바꿀 수 있음 mutating 하면 가능
    }
}

var devJin = YoutuberStruct(name:"bicco", subCnt : 99999)
var devJinClone = devJin

print("devJinClone.name : \(devJinClone.name)")
//여기서 devjin의 name을 바꾸면 clone은 바뀌지 않음 = 복사값임
print("devJin.name : \(devJin.name)")

//차이
//struct : 복사해서 사용하는 개념. 참조하는 값이 바뀌어도 기존 값에는 영향이 없음! 연결관계가 강함
//class : 공유해서 사용하는 개념. 참조하는 값이 바뀌면 기존 값도 바뀜! 연결관계가 약함

//---------------------class---------------------
class Youtuber {
    var name : String
    var subCnt : Int
    //init으로 매개변수 가진 생성자 메소드를 만들어야 매개변수 넣고 객체생성가능
    init(name: String, subCnt : Int){ //init 즉 생성자 메소드로 값을 메모리에 넘겨줘야한다 .
        self.name = name
        self.subCnt = subCnt
    }
    func changeName(newName : String){
        self.name = newName //class에서는 값 변경 그냥 가능함
     
    }
}

var Jin = Youtuber ( name : "bicco", subCnt : 99999)

var JinClone = Jin
print("class - jinclone.name : \(JinClone.name)")
JinClone.name = "hoho"

print("class  - jinclone.name : \(JinClone.name)")
print("class  - Jin.name : \(Jin.name)")









//---------------------class instance ---------------------



class PersonA{
    var name: String! // !는 무조건 있어야하는 것 따라서 이름이 인스턴스 생성할 떄 없으면 오류 뜸 즉, 생성자에 무조건 있어야함
    var age: Int
    var nickName: String? //이건 뭐냐 personA를 사용하지만 닉네임이 없는 경우도 있을 수 있다는 것을 알려줌
    
//    init?(name: String, age: Int, nickName: String){ // init?는 안에 if를 넣어서 조건에 안맞으면 생성 x = nil
//        self.name = name
//        self.age = age
//        self.nickName = nickName
//    } //이게 클래스 초기값 만들어주는 구문인데 ---11111
//
    //== 위에랑 같은 코드임 표현방식이 다름
    convenience init(name: String, age: Int, nickName: String){
        self.init(name: name, age: age)
        self.nickName = nickName
    }
    
    
    
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }

}

let meme: PersonA = PersonA(name: "bicco", age: 23, nickName: "haha")// 이렇게 인스턴스 생성과 동시에 초기화 해주기위함임-11111


let meme22 = PersonA(name: "bicco", age: 23)
