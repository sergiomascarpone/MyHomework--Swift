//: [Previous](@previous)

import Foundation

struct Student {
    var firstName : String {
        
        willSet {
            print("will set " + newValue + "instead of " + firstName)
        }
        
        didSet(oldFirstName) {
            print("didSet " + firstName + "instead of " + oldFirstName)
            
            firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set no " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var student = Student(firstName: "Serjo", lastName: "Mascarpone")

student.firstName
student.lastName
student.fullName

student.fullName = "Alex Varlamov"
student.fullName
student.firstName
student.lastName
student.fullName

