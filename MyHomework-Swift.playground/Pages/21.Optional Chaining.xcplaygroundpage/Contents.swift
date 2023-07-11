class Adress {
    
    var street = "Dzerzhinskogo"
    var number = "11"
    var city = "Minsk"
    var country = "Belarus"
}

struct Garage {
    var size = 2
}

class House {
    
    var rooms = 1
    var adress = Adress()
    var garage : Garage? = Garage()
}

class Car {
    
    var model = "Lada"
    
    func start() {
    }
}

class Person {
    
    var cars: [Car]? = [Car()]
    var house: House? = House()
}

let p = Person()

p.cars![0]
p.house!

p.house!.garage!.size

//optional binding
if let house = p.house {
    if let garage = house.garage {
        garage.size
    }
}

if let size = p.house?.garage?.size {
    size
}

//optional chaining
p.house?.garage?.size //цепочка может оборваться в любом опциональном проперти, а результат этой цепочки всегда будет опциональным значением.
p.house?.garage?.size = 3

if (p.house?.garage?.size = 3) != nil {
    print("upgrade!")
} else {
    print("failuree!")
}

if let size = p.house?.garage?.size {
    size
}

//p.cars?[0].model

if p.cars?[0].start() != nil {
    print("start!")
} else {
    print("failure!")
}
















