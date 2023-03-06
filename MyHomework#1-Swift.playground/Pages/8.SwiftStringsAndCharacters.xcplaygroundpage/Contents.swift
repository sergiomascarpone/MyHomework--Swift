import UIKit
// String

//var str = String()
var str = "c"

str = str + "a"
str += "b"

var a = 5
var b = a

var str1 = "a"
var str2 = str1

str1
str2

//str1 = ""
str1
str2

str1.isEmpty

let char1 : Character = "x"

for c in "Hello world!" {
    print(c)
}

str1.append(char1)

// Unicode
let heart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "e\u{301}"

let fun : Character = "a\u{301}"

let funString = "what is this? -> \(fun)"

funString

funString.count


if funString == "aa" {
    
}else {
    print("not equal")
}

funString.hasPrefix("what")
funString.hasSuffix("a\u{301}")


/*
let someString = "cafe pesto has the best cofee"

let firstCharacter = someString.startIndex
let fourthCharacterIndex = someString.index(firstCharacter, offsetBy: 2)
let fourthCharacter = someString[fourthCharacterIndex] // выведит f
*/

// Substring - фрагмент или ломтик String
/*
let someString = "cafe pesto has the best cofee"

if let space = someString.firstIndex(of: " ") {
    let spaceIndex = someString.index(space, offsetBy: 1)
    let secondWordSentence = someString[spaceIndex..<someString.endIndex]
    print(secondWordSentence)
}
*/

// пример с использованием firstIndex(of)
/*
let greeting = "Hi there! It`s nice to meet you!"
let endOfSentence = greeting.firstIndex(of: "!")!
let firstSentence = greeting[...endOfSentence] // распечатает == "Hi there!"


// пример с пустым массивом, где при каждом цикле мы добавляем в массив один Character

let someString = "cafe pesto has the best cofee"

var stringArray: [Character] = []

for i in someString {
    stringArray.append(i)
}
print(stringArray)


let stringArray2 = Array(someString)
print(stringArray2)

let c = stringArray2[3]
print(c)


// NSAttributedString - это string с атрибутами для каждого символа

let attributes: [NSAttributedString.Key: Any] = [
    .strokeWidth: 5.0,
    .strokeColor: UIColor.red
]

let attributedString = NSAttributedString(string: "Touches: 0", attributes: attributes)
touchLabel.attributedText = attributedString
 */
