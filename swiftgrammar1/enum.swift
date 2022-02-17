import Foundation

enum School {
    case elementary
    case middle
    case high
}

let yourSchool = School.elementary //enum 안에 변수명을 가져옴

print("yourSchool : \(yourSchool)")

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade.rawValue)") // rawValue는 값을 말하는 거 그럼 yourGrade만 하면 second만 찍힘

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    
    func get() -> String{
       switch self {
       case .elementary(let name): //.elementary는 enum에서 elementary가 잡혔을떄 라는 뜻 = SchoolDetail.middle
           return name
       case .middle(let name):
           return name
       }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "ppak-codes") // middle 의 name 할당시키고

print("yourMiddleSchoolName : \(yourMiddleSchoolName.get())") // enum 안에 함수 실행시켜 name 리턴


