import UIKit
//1.Homework


let Name = "Sergio"
let FirstName = "Bikov"
let LastName = "Olegovich"
print(FirstName, Name, LastName)

let Birdthdey = 1993
let Growth = "1.89sm"
let Weight = "88kg"
print(Birdthdey, Growth, Weight)


let NameA = "Alexei"
let LustNameB = "Varlamov"
let FirstNameC = "Denisovich"
print(FirstNameC, NameA, LustNameB)

let GrowthD = "1.88cm"
let weightF = "81kg"
let BirdthdeyG = "1994"
print(BirdthdeyG, weightF, GrowthD)


let name = "Valentin"
let lastName = "Petrenro"
let firstName = "Aleksandrovich"
print(lastName, name, firstName)

let weight = "99kg"
let growth = "1.78cm"
let birdthdey = "1998"
print(weight, growth, birdthdey)

let a = "Dmitriy"
let b = "Petrov"
let c = "Aleksandrovich"
print(b, a, c)

let aa = "69kg"
let bb = "1.88sm"
let cc = "1998"
print(aa, bb, cc)




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

let myTuple = ("January", "February", "March", "April", "May" )
let (Январь, Февраль, Март, Апрель, Май) = ("Январь","Февраль", "Март", "Апрель", "Май" )

myTuple.0
myTuple.1
myTuple.2
myTuple.3
myTuple.4

Январь
Февраль
Март
Апрель
Май

/*
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
*/

var myPhysicalTraining = (30, 10, 50, 70, 90)

var (pushUps, pullUps, sitUps, chestPress, legPress) = myPhysicalTraining


//print(myPhysicalTraining)

/*
print("My maximum number of push-ups: \(pushUps)")
print("My maximum number of pull-ups: \(myPhysicalTraining.1)")
print("My maximum number of sit-ups: \(sitUps)")
print("My maximum number of chest press: \(chestPress)")
print("My maximum number of leg press: \(myPhysicalTraining.4)")
*/

/*
var myPhysTrain1 = (pushUps1:30, pullUps1:10, sitUps1:50, chestPress1:70, legPress1:90)

print(myPhysTrain1.pushUps1)
print(myPhysTrain1.pullUps1)
print(myPhysTrain1.sitUps1)
print(myPhysTrain1.chestPress1)
print(myPhysTrain1.legPress1)
*/

var my_Son_Daniil_PhysicalTraining = (40, 13, 60, 85, 100)

var (Daniil_PushUps, Daniil_PullUps, Daniil_SitUps, Daniil_ChestPress, Daniil_LegPress) = my_Son_Daniil_PhysicalTraining


//print(my_Son_Daniil_PhysicalTraining)

/*
print("Daniil maximum of push-ups: \(my_Son_Daniil_PhysicalTraining.0)")
print("Daniil maximum of pull-ups: \(Daniil_PullUps)")
print("Daniil maximum of sit-ups: \(my_Son_Daniil_PhysicalTraining.2)")
print("Daniil maximum of chest press: \(Daniil_ChestPress)")
print("Daniil maximum of leg press: \(my_Son_Daniil_PhysicalTraining.4)")
*/

/*
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
 */

