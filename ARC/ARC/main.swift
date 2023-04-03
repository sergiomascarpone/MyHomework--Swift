var playground = true

class Student {
    
    weak var teacher : Teacher? //weak - слабая ссылка, всегда должна быть var.
    
    deinit {
        print("goodbye student")
    }
}

class Teacher {
    
    var student : Student?
    
    deinit {
        print("goodbye teacher")
    }
}

if playground {
    
    var student = Student()
    
    if playground {
        
        var teacher = Teacher()
        student.teacher = teacher
        teacher.student = student
    }
    
    print("exit playground")
}

print("end")
