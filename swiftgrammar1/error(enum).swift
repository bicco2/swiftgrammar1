import Foundation

//에러를 enum타입으로 만들 수 있다.
enum MismatchError: Error{
    case nameMismatch
    case numberMismatch
}


//throws 에러를 던지는 메소드라는걸 알려주는거임 (반환하지않는 메소드)
func guessMyName(name input: String) throws{
    print("guessMyName called")
    
    if input != "bicco"{
        print("x")
        throw MismatchError.nameMismatch
        
        //return //이렇게 리턴을 해버리면 밑에 print("o") 얘를 실행안하고 그냥 건너뜀 break? continue 느낌 걍 else 하면 댐
    }
    
    print("o")
}

//try? guessMyName(name: "bic") //?의 의미 : error 가 던져져도 처리하지 않겟다는 뜻 ,즉 틀린건 맞는데 에러 처리로 안넘어 간ㄴ다 .

do {// 에러를 받아서 처리할 떄 do 사용
    try guessMyName(name: "nico")
} catch {
    print("catched!!! : \(error)")
}




//option + command + /  >> 함수에 대한 주석 처리 양식 나옴
/// 번호를 반환하는 메소드 , 얘는 에러가 뜨면 반환하는 데이터 값이 못받고 그냥 분해됨
/// - Parameter input: 사용자 숫자 입력
/// - Returns: 맞췄는지 여부 (bool)
func guessMyNumber(number input: Int) throws -> Bool{
    print("guessMyNumber called")
    
    if input != 10{
        print("x")
        throw MismatchError.nameMismatch //do 와 연결되있는거 같다
    }
    
    print("o")
    return true
}

do {// 에러를 받아서 처리할 떄 do 사용
    try guessMyNumber(number: 10)
} catch {
    print("catched!!! : \(error)")
}






