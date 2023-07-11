import Foundation

class Symbol {
    
    
}

class A: Symbol {
    func aa(){}
}

class B: Symbol {
    func bb(){}
}

//AnyObject - говорит что в вашем массиве может лежать любой обьект...
//Any - может лежать всё что угодно в массиве и строка и число и клоужер...

let array: [Any] = [A(), B(), Symbol(), A(), A(), B(), NSObject()]

var aCount = 0
var bCount = 0
var sCount = 0

for value in array {
    
    if value is A {
                
        aCount+=1
    } else if value is B {
        bCount+=1
    } else if value is Symbol {
        sCount+=1
    }
    
    if let a = value as? A {
        a.aa()
    } else if let b = value as? B {
        b.bb()
    }
    
   // let a = value as A
        
}

aCount
bCount
sCount
