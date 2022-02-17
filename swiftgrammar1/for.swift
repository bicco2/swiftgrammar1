import Foundation

for i in 0..<5{
    print("ghgh i: \(i)")
}
//0..<5 : 0~4   0<..5 : x

for i in 0..<5 where i % 2 == 0{
    print("호호 i: \(i)")
}
//for 내부에 where로 조건문을 걸 수 있음

var randomInts : [Int] = []
//swift식 배열 선언 방식

for _ in 0..<25{ //i가 필요 없을 때 _로 대체
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts : \(randomInts)")
