// Классы
class Dog {
    var name = ""
    var age = 0
    var owner = ""
    
    func bark() {
        print("\(name) bark!")
    }
}

let newDog = Dog() // создаем новый обьект
newDog.name = "Maylo"
newDog.age = 4
newDog.owner = "Salie"

newDog.bark()

let anotherDog = Dog()
anotherDog.name = "Chappie"
anotherDog.age = 2
anotherDog.owner = "Peter"

anotherDog.bark()

