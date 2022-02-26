import Foundation

//프로토콜에서 제네릭 사용하는 법
protocol PetHaving{
    associatedtype T //제네릭
    var pets: [T] {get set}
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving{
    mutating func gotNewPet(_ newPet: T){
        self.pets.append(newPet)
    }
}

enum Animal{
    case cat, dog, bird
}

struct Friend : PetHaving{
    var pets : [Animal] = []
}

struct Family : PetHaving{
    var pets : [String] = []
}

var myFriend = Friend()

myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)
print(myFriend.pets)
