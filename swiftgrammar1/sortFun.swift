//고차함수
import Foundation

var myArray = [3, 4, 88, 99, 5, 6, 7, 8, 10, 20, 100]

//오름차순 정렬
var ascendingArray = myArray.sorted()

// 이렇게 하면 myArray 배열 자체가 변해버림 sorted로 해야 배열 자체가 안변함
//myArray.sort()

var descendingArray = myArray.sorted(by: >)


