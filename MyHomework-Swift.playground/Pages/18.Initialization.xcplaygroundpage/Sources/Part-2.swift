//Part-2. Initializer Inheritance and Overriding
/*
class Doctor: Student {
    var fieldOfStudy: String
    
    init(fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    }
    
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Health"
        super.init(firstName: firstName, lastName: lastName)
    }
    /*
    override init(weight: Int, age: Int) {
        self.fieldOfStudy = ""
        self.init(weight: weight, age: age)
    }
    */
    /*
    convenience init(fieldOfStudy: String) {
        self.init(firstName: "Doctor", lastName: "House")
        self.fieldOfStudy = fieldOfStudy
    }
     */
}
 
let d1 = Doctor(firstName: "aaa")
*/
