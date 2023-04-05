var playground = true

class Student {
    
    //weak var teacher : Teacher? //weak - слабая ссылка, всегда должна быть var.
    unowned var teacher : Teacher? //неопциональный проперти
    
    deinit {
        print("goodbye student")
    }
    
    init(teacher : Teacher) {
        self.teacher = teacher
    }
}

class Teacher {
    
    var student : Student!
    
    var test : (() -> ())? //closure - который мы держим стронг ссылкой
    
    lazy var test2 : (Bool) -> () = {
        [unowned self] (a: Bool) in
        print(self.student)
    }
    
    init() {
        student = Student(teacher: self)
    }
    
    deinit {
        print("goodbye teacher")
    }
}

var closure3 : (() -> ())?

if playground {
    
    var teacher = Teacher()
    
    teacher.test2(true)
    
    /*
    teacher.test = {
        [unowned teacher] in
        print(teacher)
    }*/
    
   /*
    if playground {
        let student = Student(teacher: teacher)
        teacher.student = student
    }*/
    
    /*
    var student = teacher.student
    closure = {
        [unowned student] in
        print(student)
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

var closure2 : (Int) -> Int = {[x,y,h] (a: Int) -> Int in
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
