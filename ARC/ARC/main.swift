var playground = true

class Student {
    
    //weak var teacher : Teacher? //weak - слабая ссылка, всегда должна быть var.
    unowned let teacher : Teacher? //неопциональный проперти
    
    deinit {
        print("goodbye student")
    }
    
    init(teacher : Teacher) {
        self.teacher = teacher
    }
}

class Teacher {
    
    var student : Student!
    
    init() {
        student = Student(teacher: self)
    }
    
    deinit {
        print("goodbye teacher")
    }
}

if playground {
    
    var teacher = Teacher()
    
   /*
    if playground {
        let student = Student(teacher: teacher)
        teacher.student = student
    }*/
    
    print("exit playground")
}


var x = 10
var y = 20

class Human {
    var name = "a"
}

var h = Human()

var closure : () -> () = {
    [x] in
    print("\(x) \(y)")
}

var closure2 : (Int) -> Int = {[x,y] (a: Int) -> Int in
    print("\(x) \(y) \(h.name)")
    return a
}

closure2(1)

x = 30
y = 40
h = Human()
h.name = "b"


closure2(1)

print("end")
