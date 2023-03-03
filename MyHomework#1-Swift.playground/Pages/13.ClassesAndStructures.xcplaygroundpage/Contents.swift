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

/*
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
    func move(){}

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
    override func move() {
        print("BIBI go!")
    }
    func sound(){
        print("Fafafa")
    }
}

let car = Car(vin: "urnv33uf94", year: 2022, numbers: 4)
transport.move()
car.move()
car.sound()
*/

// Structures - Struct, Value Type VS Referense Type

struct Car{
    let numberOfSeats: Int
    let year: Int
    var mileage: Int
    var isCrash: Bool = false
    
    mutating func crash() {
        print("Crash")
        self.isCrash = true
    }
}

class CarClass {
    let numberOfSeats: Int
    let year: Int
    var mileage: Int
    var isCrash: Bool = false
    
    init(numberOfSeats: Int, year: Int, mileage: Int) {
    self.numberOfSeats = numberOfSeats
    self.year = year
    self.mileage = mileage
    }
}

var car = Car(numberOfSeats: 2, year: 2022, mileage: 0)
car.mileage = 1200

var car2 = car

car.mileage = 1000
car.mileage = 3000
//print(car.mileage)
//print(car2.mileage)

let carClass = CarClass(numberOfSeats: 2, year: 2022, mileage: 0)
carClass.mileage = 2100

let carClass2 = carClass

carClass.mileage = 1200

print(carClass.mileage)
print(carClass2.mileage)

func changeMileage(car: CarClass, newMileage: Int) {
    car.mileage = newMileage
}

func changeMileage(car: Car, newMileage: Int) -> Car {
    var carInside = car
    carInside.mileage = newMileage
    return carInside
}

//changeMileage(car: carClass, newMileage: 5000)
//print(carClass.mileage)

car = changeMileage(car: car, newMileage: 6000)
print(car.mileage)




