// Классы - Classes
/*
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
 */

enum Color: String{
    case red
    case black
    case green
}

class Transport {
    var year:Int = 2000
    var color:Color = .black
    let numberOfSeats:Int
    
    init(year:Int, numbers:Int) {
        self.year = year
        self.numberOfSeats = numbers
    }
}

let transport = Transport(year: 2000, numbers: 5)
print(transport.year)
transport.color = .red

class Car: Transport {
    let vin: String
    var number: String?
    var musik: Bool = false
    
    init(vin:String, year: Int, numbers: Int) {
        self.vin = vin
        super.init(year: year, numbers: numbers)
    }
}

let car = Car(vin: "urnv33uf94", year: 2022, numbers: 4)





