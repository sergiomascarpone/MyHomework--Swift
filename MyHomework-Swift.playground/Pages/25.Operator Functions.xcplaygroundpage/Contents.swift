struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

p1 + p2
p1
p2

p1 = p1 + p2
p1
p2

//p1 += p2
//изменяем само значение переменной
func += (a: inout Point, b: Point) {
    a = a + b
}

p1
p2
p1 += p2
p1

func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}
p1 == p2
p1 == p1

//пергрузка префиксных и постфиксных операторов

var i = 5
i

prefix func ++ ( a: inout Point) -> Point {
    a.x += 1
    a.y += 1
    return a
}

postfix func ++ ( a: inout Point) -> Point {
    let b = a
    ++a
    return b
}

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

p1++
p1
++p1
p1


p1.x = 7

if (p1++).x == 8 {
    print("8")
} else {
    print("not 8")
}
p1.x

//упражнение на проверку нашей реализации
p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

p1++ + p2++

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

++p1 + ++p2

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

p1++ + ++p2

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

++p1 + p2++















