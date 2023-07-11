import UIKit
//2. Создать класс Tiles (кафель), который будет содержать поля: brand, sizeh, sizew, price и метод класса square(), который будет считать площадь плитки. Объявить пару объектов класса и внести данные в поля / свойства. Затем отобразить площадь каждого обьекта, вызвав метод square(). Создать в классе проперти-типа, которое будет выводить стандартный размер плитки: 40/40

/*
class Tiles {
    var brand: String = ""
    var sizeHeight: Double = 40.0
    var sizeLenght: Double = 40.0
    var price: Double = 12.0
    var square: Double = 0.0
    
    
    
    func increaseSquare() -> Double {
        self.square = sizeHeight * sizeLenght
        var room: Double = 10.0
        room = 1000 * room
        return (price * (room / square))
        
    }
    
}

var bb = Tiles()
bb.increaseSquare()
print(bb.increaseSquare())


struct Tiles {
    var sizeHeight: Double = 40.0
    var sizeLenght: Double = 40.0
    var brand: String = ""
    var price: Double = 12.0
    var square: Double = 0.0
    
    func Square() -> Double {
        return (sizeHeight * sizeLenght)
    }
    
}

var bb = Tiles()
bb.Square()
var room: Double = 20.0
print(room * 1000 / bb.Square() * bb.price)


let myMonth = ("jan", "feb", "mar")

myMonth.0
myMonth.1
myMonth.2

print(myMonth.2)
 

var myMonth = (0, 1, 2)

var (jan, feb, march) = myMonth

print(feb)
 */

var myMonth = (30, 28, 31)

var (jan, feb, march) = myMonth

print(feb)

















