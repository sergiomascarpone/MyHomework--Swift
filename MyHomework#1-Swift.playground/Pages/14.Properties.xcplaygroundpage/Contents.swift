//: [Previous](@previous)

import Foundation

struct Student {
    var firstName : String {
        
        willSet(newFirstName) {
            print("will set" + newFirstName + "instead of" + firstName)
        }
        
        didSet(oldFirstName) {
            print("didSet" + firstName + "instead of" + oldFirstName)
        }
    }
}

var student = Student(firstName: "Serjo")

student.firstName

