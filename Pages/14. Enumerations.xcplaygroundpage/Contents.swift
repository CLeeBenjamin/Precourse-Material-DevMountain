/*:
 # Enumerations
 */

import Foundation

//:------------------------------Basic Enumerations---------------------------------------------------------------------

enum TextAlignment{
    case left
    case right
    case center
}

///create an instance//

var align = TextAlignment.right
align

if align == .right{
    print("Yeah")
    
}
// While enum values can be compared in if statements, switch statements are typically used to handle enum values. Use switch to print the alignment in a more human-readable way.//

switch align {
case .left:
    print("it's left")
case .right:
    print("it's right")
case .center:
    print("it's center")
default:
    print("🇺🇸")
}

//This code works, but we recommend avoiding default clauses when switching on enum types, because using a default is not as “future proof.” Suppose you later want to add another alignment option for justified text.//



//:------------------------------------Raw Value Enumerations---------------------------------------------------------------------

///
enum Alignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
    
}

print("This is left: \(Alignment.left.rawValue)")
print("This is right : \(Alignment.right.rawValue)")
print("This is center: \(Alignment.center.rawValue)")
print("This is justify: \(Alignment.justify.rawValue)")
print("This is left: \(Alignment.left.hashValue)")

let myRawValue = 20

if let myAlignment = Alignment(rawValue: myRawValue){
    print("Coverted \(myRawValue)")
    
}

//What is going on here? You start with myRawValue, a variable of type Int. Then you try to
//convert that raw value into a TextAlignment case using TextAlignment(rawValue:).
//Because TextAlignment(rawValue:) has a return type of TextAlignment?, you use
//optional binding to determine whether you get a TextAlignment value or nil back.


///this
//enum ProgrammingLanguage: String {
//    case swift = "swift"
//    case objectiveC = "objective-c"
//    case c = "c"
//    case cpp = "c++"
//    case java = "java"
//}
//let myFavoriteLanguage = ProgrammingLanguage.swift

enum ProgrammingLanguage: String {
    case swift
    case objectiveC
    case c
    case cpp
    case java
}
let myFavoriteLanguage = ProgrammingLanguage.swift


//:---------------------------------------------Methods---------------------------------------------------------------------
////Recall that a method is a function that is associated with a type. In some languages, methods
//can only be associated with classes (which we will discuss in Chapter 15). In Swift, methods
//can also be associated with enums. Create a new enum that represents the state of a lightbulb.

enum LightBulb{
    case on
    case off
    
    func surfaceTemp(forAmbientTemp ambient: Double) -> Double{
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemp = 77.0

var bulbTemp = bulb.surfaceTemp(forAmbientTemp: 77.0)
print(bulbTemp)

//First you create bulb, an instance of the Lightbulb type. When you have an instance of the type, you can call methods on that instance using the syntax
//you can use a enums method on an instance of that enum created by a variable

///The bulb variable is an instance of Lightbulb, surfaceTemperature(forAmbientTemperature:) is the name of the method you are calling, and ambientTemperature is a parameter you pass in to the method.

bulb.toggle()
bulb.toggle()




//:----------------------------------Associated Values---------------------------------------------------------------------
enum differentShapes{
    case rectangle(width: Double, height: Double)
    case square(side: Double)
    
    func area() -> Double{
        switch self {
        case let .square(side: side):
            return side * side
        case let .rectangle(width: width, height: height):
            return width * height
        }
    }
}

    var squareShape = differentShapes.square(side: 3).area()
    var rectangleShape = differentShapes.rectangle(width: 5, height: 5 )
print(rectangleShape) ///once again you are performing a method from the the enum///
print(squareShape)

differentShapes.rectangle(width: 6, height: 8).area()

    
    


//:-----------------------------Recursive Enumerations---------------------------------------------------------

enum DifferentCurrency{
    case canadianDollar
    case americanDollar
    case swissFranc
    case euro
    case brazilianReal
    
    indirect case twoCurrency(DifferentCurrency, DifferentCurrency)
    indirect case threeCurrency(DifferentCurrency, DifferentCurrency, DifferentCurrency)
    
}

enum FamilyTree{
    case noKnownParents
    indirect case oneKnownParent(name: String, Tree: FamilyTree)
    indirect case twoKnownParents(Father: String, Mother: String, fatherTree: FamilyTree, motherTree: FamilyTree)
    
}

let briansTree = FamilyTree.oneKnownParent(name: "Bernice", Tree: .oneKnownParent(name: "Bern", Tree: .noKnownParents))



//: [Previous](@previous)
//: [Next Chapter](@next)

