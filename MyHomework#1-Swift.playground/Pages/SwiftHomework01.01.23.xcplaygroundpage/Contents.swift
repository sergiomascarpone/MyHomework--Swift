import UIKit

//1.Homework
/*
let Name = "Sergio"
let FirstName = "Bikov"
let LastName = "Olegovich"
print(FirstName, Name, LastName)

let Birdthdey = 1993
let Growth = "1.89sm"
let Weight = "88kg"
print(Birdthdey, Growth, Weight)


let a = "Max"
let b = "Fadeev"
let c = "Astaxovich"
print(b, a, c)

let aa = "1993"
let bb = "189sm"
let cc = "99kg"
print(aa, bb, cc)

let Onne = "Danik"
let Twwo = "Mokri"
let Thrre = "Vladimirovich"
print(Twwo, Onne, Thrre)

let One1 = "1889"
let Two2 = "169sm"
let Thre3 = "104kg"
print(One1, Two2, Thre3)


//2.Homework - Работа с базовыми типами

Int8.min
Int8.max
Int16.min
Int16.max
Int32.min
Int32.max
UInt64.min
UInt64.max
Int.min
Int.max
UInt.max
UInt.min

let One = 199 
let Two = 1.444448988
let Thre: Float = 12.12342

let Four = One + Int(Two) + Int(Three)
print(Four)

let five = Double(One) + Two + Double(Thre)
print(five)

let six = Float(One) + Float(Two) + Thre
print(six)

if Double(Four) < five {
    print("Double точнее")
} else {
    print("No")
}


let Uno = 100
let Duo = 1.8899477
let Trea: Float = 12.12546

let Cuatro = Uno + Int(Duo) + Int(Trea)
print(Cuatro)
let Cinqve = Double(Uno) + Duo + Double(Trea)
print(Cinqve)
let Sette = Float(Uno) + Float(Duo) + Trea
print(Sette)

if Double(Trea) < Cinqve {
    print("Double right")
} else {
    print("No")
}


let Onee = 143
let Twoo = 1.55998
let Three: Float = 12.1277

let Fourr = Onee + Int(Twoo) + Int(Three)
print(Fourr)

let Fivee = Double(Onee) + Twoo + Double(Three)
print(Fivee)

let sixx = Float(Onee) + Float(Twoo) + Three
print(sixx)

if Double(Fourr) < Fivee {
    print("Double right")
} else {
    print("no")
}

//3.Homework - Tuples

 //Задание 1:
 
let myTuple = ("January", "February", "March", "April", "May" )
myTuple.0
myTuple.1
myTuple.2
myTuple.3
myTuple.4

 //Задание 2:
 
let (Январь, Февраль, Март, Апрель, Май) = ("Январь", "Февраль", "Март", "Апрель", "Май")
Январь
Февраль
Март
Апрель
Май

let myBoxes = ("Box1", "Box2", "Box3", "Box4")
myBoxes.0
myBoxes.1
myBoxes.2
myBoxes.3
 

 //Задание 3:
 
var myTuple = (maxPushUp:12, maxPullDown:13, maxSquats: 33)

print(myTuple)
print("My max Push Up: \(myTuple.maxPushUp)")
print("My max pull Down: \(myTuple.maxPullDown)")
print("My max Squarts: \(myTuple.maxSquats)")

var myBoostFrienfTuple = (maxPushUp:120, maxPullDown:13, maxSquats: 43)

let justTuple = (maxPushUp: myTuple.maxPushUp, maxPullDown: myTuple.maxPullDown, maxSquats: myTuple.maxSquats)
myTuple.maxPushUp = myBoostFrienfTuple.maxPushUp
myTuple.maxPullDown = myBoostFrienfTuple.maxPullDown
myTuple.maxSquats = myBoostFrienfTuple.maxSquats
myBoostFrienfTuple.maxPushUp = myTuple.maxPushUp
myBoostFrienfTuple.maxPullDown = myTuple.maxPullDown
myBoostFrienfTuple.maxSquats = myTuple.maxSquats
print("My new max: \(myTuple)")



var myPhysicalTraining = (30, 10, 50, 70, 90)

var (pushUps, pullUps, sitUps, chestPress, legPress) = myPhysicalTraining


//print(myPhysicalTraining)


print("My maximum number of push-ups: \(pushUps)")
print("My maximum number of pull-ups: \(myPhysicalTraining.1)")
print("My maximum number of sit-ups: \(sitUps)")
print("My maximum number of chest press: \(chestPress)")
print("My maximum number of leg press: \(myPhysicalTraining.4)")

 
 
var myPhysTrain1 = (pushUps1:30, pullUps1:10, sitUps1:50, chestPress1:70, legPress1:90)

print(myPhysTrain1.pushUps1)
print(myPhysTrain1.pullUps1)
print(myPhysTrain1.sitUps1)
print(myPhysTrain1.chestPress1)
print(myPhysTrain1.legPress1)


var my_Son_Daniil_PhysicalTraining = (40, 13, 60, 85, 100)

var (Daniil_PushUps, Daniil_PullUps, Daniil_SitUps, Daniil_ChestPress, Daniil_LegPress) = my_Son_Daniil_PhysicalTraining


//print(my_Son_Daniil_PhysicalTraining)


print("Daniil maximum of push-ups: \(my_Son_Daniil_PhysicalTraining.0)")
print("Daniil maximum of pull-ups: \(Daniil_PullUps)")
print("Daniil maximum of sit-ups: \(my_Son_Daniil_PhysicalTraining.2)")
print("Daniil maximum of chest press: \(Daniil_ChestPress)")
print("Daniil maximum of leg press: \(my_Son_Daniil_PhysicalTraining.4)")

 
 
myPhysicalTraining.0 = my_Son_Daniil_PhysicalTraining.2
myPhysicalTraining.1 = my_Son_Daniil_PhysicalTraining.0
myPhysicalTraining.3 = my_Son_Daniil_PhysicalTraining.4
print(myPhysicalTraining )


if myPhysicalTraining.0 > my_Son_Daniil_PhysicalTraining.0 {
  print("I do \(myPhysicalTraining.0 - my_Son_Daniil_PhysicalTraining.0) push-ups more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.0 > myPhysicalTraining.0 {
  print("Daniil does \(my_Son_Daniil_PhysicalTraining.0 - myPhysicalTraining.0) push-ups more than me!")
}

if myPhysicalTraining.1 > my_Son_Daniil_PhysicalTraining.1 {
  print("I do \(myPhysicalTraining.1 - my_Son_Daniil_PhysicalTraining.1) pull-ups more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.1 > myPhysicalTraining.1 {
  print("Daniil does \(my_Son_Daniil_PhysicalTraining.1 - myPhysicalTraining.1) pull-ups more than me!")
}

if myPhysicalTraining.2 > my_Son_Daniil_PhysicalTraining.2 {
  print("I do \(myPhysicalTraining.2 - my_Son_Daniil_PhysicalTraining.2) sit-ups more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.2 > myPhysicalTraining.2 {
  print("Daniil does \(my_Son_Daniil_PhysicalTraining.2 - myPhysicalTraining.2) sit-ups more than me!")
}

if myPhysicalTraining.3 > my_Son_Daniil_PhysicalTraining.3 {
  print("I do chest press \(myPhysicalTraining.3 - my_Son_Daniil_PhysicalTraining.3) more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.3 > myPhysicalTraining.3 {
  print("Daniil does chest press \(my_Son_Daniil_PhysicalTraining.3 - myPhysicalTraining.3) kg more than me!")
}

if myPhysicalTraining.4 > my_Son_Daniil_PhysicalTraining.4 {
  print("I do leg press \(myPhysicalTraining.4 - my_Son_Daniil_PhysicalTraining.4) kg more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.4 > myPhysicalTraining.4 {
  print("Daniil does leg press \(my_Son_Daniil_PhysicalTraining.4 - myPhysicalTraining.4) kg more than me!")
}
 

//4.Homework - Optionals

//Задание 1:

let a = "123"
let b = "321"
let c = "favorite"
let d = "not favorite"
let e = "-4"
let f = "10.9"

var sum = 0

if var firstSum = Int(a) {
    sum += firstSum
}

if var secondSum = Int (b) {
    sum += secondSum
}

if var thirdSum = Int (c) {
    sum += thirdSum
}

if Int(d) != nil {
    sum += Int(d)!
}

if let fifthSum = Int(e), let sixthSum = Double(f) {
    sum += fifthSum + Int(sixthSum)
}

print(Int(e))
print(Int(f))
print(sum)


//Задание 2:

let server: (statusCode: Int, message: String?, errorMessage: String?) = (100, nil, "error")
if  server.statusCode >= 200 && server.statusCode <= 300 {
    if let message = server.message {
        print(message)
    } else {
        print("Таких вводных быть не должно ))")
    }
} else {
    if let message = server.errorMessage {
        print(message)
    } else {
        print("Таких вводных быть не должно")
    }
}

let server: (statusCode: Int, message: String?, errorMessage: String?) = (100, nil, "error")
if server.statusCode >= 100 && server.statusCode <= 200 {
    if let message = server.message {
        print(message)
    } else {
        print("this Data not")
    }
} else {
    if let message = server.errorMessage {
        print(message)
    } else {
        print("Not Data")
    }
}


//Задание 3:

var responseTupleClone: (message: String?, errorMessage: String?) = ( nil, "It isn't okay at all!!!")

//responseTupleClone.errorMessage = nil

if let message = responseTupleClone.message {
    print(message)
} else if let errorMessage = responseTupleClone.errorMessage {
    print(errorMessage)
} else {
    print("A-A-A-A!!")
}

var firstStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var secondStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var thirdStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var fourthStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var fifthStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)

firstStudentTuple.name = "Vanya"
secondStudentTuple.name = "Sabina"
thirdStudentTuple.name = "Gosha"
fourthStudentTuple.name = "Masha"
fifthStudentTuple.name = "Oleg"

firstStudentTuple.carNumber = "UP14AC1417"
thirdStudentTuple.carNumber = "AC41UP1714"
fifthStudentTuple.carNumber = "PU41CA4171"

firstStudentTuple.controlScore = 5
secondStudentTuple.controlScore = 5
fifthStudentTuple.controlScore = 4

print ("5 people entered the driving school.")

if firstStudentTuple.name != nil {
    print("Name: " + firstStudentTuple.name!)
}

if firstStudentTuple.carNumber != nil {
    print("Car number: " + firstStudentTuple.carNumber!)
} else {
    print("Student doesn't have a car")
}

if firstStudentTuple.controlScore != nil {
    print("Score: \(firstStudentTuple.controlScore!)")
} else {
    print("Student missed exam")
}
 */


    //4.Homework - Loops

let names: [String] = ["Pavel", "Ludmilaa", "Andrey", "Liza"]
for name in names {
    print("Welcome, \(name)")
}

let namesSet: [String] = ["Oliya", "Steave", "Bill", "Mark"]
for name in namesSet {
    print("Hello, \(name)")
}

let namesDictionary: [Int: String] = [0: "Poll", 1: "Matyu", 2: "Oivia", 3: "Blade"]
for keyvalue in namesDictionary {
    print("\(keyvalue.key) \(keyvalue.value)")
}
for (key, value) in namesDictionary {
    print("\(key) \(value)")
}

let string = "Serjo"
for chair in string {
    print(chair)
}
