import Foundation

var myArray : [Int] =
    [0,1,2,3,4,5,6,7,8,9,10]

//foreach

for item in myArray{ //item으로 myArray 값이 하나씩 들어오게 된다. myArray의 index만큼 실행
    print("item : \(item)")
}
print("\n")

for item in myArray where item > 5{ //where로 반복할 때 조건을 붙여줌
    print("5보다 큰수 : \(item)")
}
print("\n")

for item in myArray where item % 2 != 0{ //where로 반복할 때 조건을 붙여줌
    print("홀수 : \(item)")
}
