import UIKit

var str = "Hello, playground"

class Human {
    var pat: Animal? {
        didSet {
            pat?.owner = self
        }
    }
    
    func feed() {
        print("feed")
    }
    
    func increaseSalary() {
        print("increaseSalary")
    }
    
    
    extension Human: AnimalsSignalsDelegate {
        func requestFood() {
            print("requestFood")
        }
        
        func requestCleanToilet() {
            print("requestCleanToilet")
        }
    }
    
    
    protocol AnimalsSignalsDelegate: class {
        func requestFood()
        func requestCleanToilet()
    }
    
    class Animal {
        weak var delegate: AnimalsSignalsDelegate?
        
        func requestfood() {
            delegate?.requestFood()
        }
    }
    
    var animal = Animal()
    var human = Human()
    human.pat = animal
12

    
    // Классы - Classes
    //
    //struct MyClass {
    //    var radius:  Double = 4.5
    //
    //    mutating func increaseRadius() {
    //        self.radius += 1
    ////        print("temp \(radius * 3.12 * 2)")
    //    }
    //}
    //
    //var ff = MyClass()
    //ff.increaseRadius()
    //print(ff.radius)
    
    
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
    //
    
    
    // 6. Теперь проделайте все тоже самое, но не для струĸтуры Студент, а для ĸласса. Каĸой результат в 5м задании? Что изменилось и почему?
