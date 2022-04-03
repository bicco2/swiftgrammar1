//private(set) 외부에서 변경하지 못하고 블럭 안에서만 변경할 수 있도록 하고 싶을 때 사용하는 것
import Foundation

struct MyPet{

    var title :String = "타이틀 없음"
    
    private (set) var name :String = "이름없음"
    
    //구조체와 열거형 내부의 데이터를 수정할때 mutating을 꼭 선언해줘야함
    mutating func setName(to newName: String){
        self.name = newName
    }
    
}




var myPet = MyPet()


myPet.title = "타이틀 있지롱"
//이름은 그냥 myPet.name = ""로 못바꿈 왜 ? private(set)형식으로 가둬 놨기 떄문에
myPet.setName(to: "호호")

print(myPet.name,myPet.title)
