//: [Previous](@previous)

import Foundation

struct Point {
    var x : Int
    var y : Int
    /*
    mutating func moveByX(x: Int, byY y: Int) {
        self.x += x
        self.y += y
    }*/
    
    mutating func moveByX(x: Int, andY: Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }
}

enum Color {
    
    static func numberOfElements() -> Int {
        return 2
    }
    
    case White
    case Black
    
    mutating func invert() {
        if self == Color.White {
            self = Color.Black
        } else {
            self = Color.White
        }
    }
    func print() {
        if self == Color.White {
            Swift.print("White")
        } else {
            Swift.print("Black")
        }
    }
}

var c = Color.White
c.invert()
c.invert()
c.invert()
Color.numberOfElements()

func move(point: inout Point, byX x: Int, byY y: Int) -> Point {
    point.x += x
    point.y += y
    return point
}

var point1 = Point(x: 1, y: 1)
var point2 = Point(x: 3, y: 5)

point1 = move(point: &point1, byX: 2, byY: 4)
print(point1)
point1.moveByX(x: 5, andY: 7)
































