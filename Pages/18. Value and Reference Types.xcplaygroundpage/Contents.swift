/*:
 # Values and References
 */

import Foundation

//:-------------------------------Values --------------------------------------------------------------------------------

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += " I love food"
str
playgroundGreeting

///value creates a copy


//:-----------------------------------References---------------------------------------------------------------------

//An instance of a reference type,
//however, behaves differently in that these two actions actually create an additional reference to
//the same underlying instance.


//:-------------------------Constant Value types and References------------------------------------------------------------

class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
hecate.name
let anotherHecate = hecate
anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

struct Pantheon {
    var chiefGod: GreekGod
}

let newPantheon = Pantheon(chiefGod: hecate)
print(newPantheon.chiefGod.name)
let oldPantheon = newPantheon
oldPantheon.chiefGod.name
let zeus = GreekGod(name: "Hesus")
zeus.name = "zeus.jr"
zeus.name
hecate.name
newPantheon.chiefGod.name
//:-------------------------Using Value and Reference Types Together---------------------------------------------------------

oldPantheon.chiefGod.name
let greekPantheon = oldPantheon
greekPantheon.chiefGod.name

hecate.name = "Trivia"
greekPantheon.chiefGod.name

//Remember that the chiefGod property is of type GreekGod. GreekGod is a class, and is
//therefore a reference type. When you created the pantheon with hecate as the
//chiefGod (Pantheon(chiefGod: hecate)), you gave the pantheon’s chiefGod a
//reference to the same instance of GreekGod to which hecate refers. Consequently,
//modifying the name of hecate will also change the name of the pantheon’s chiefGod.



//:------------------------------------------Copying--------------------------------------------------------------------

//Developers often want to know if copying an instance yields a shallow or a deep copy. Swift does not provide any language-level support for making a deep copy, which means copies in Swift are shallow.

let athena = GreekGod(name: "Athena")
athena.name
zeus.name
hecate.name
let gods = [athena, zeus, hecate]
print(gods)

let newGods = gods
gods.first?.name = "Phoebe"
gods
newGods

//This form of copying is referred to as shallow copying. Shallow copying does not create a
//distinct copy of an instance; instead, it provides a duplicate of the instance’s reference.

//:-------------------------------Equality vs Identity----------------------------------------------------------------
//EqEquality:

//Now that you understand the difference between value and reference types, you are ready to
//learn about equality and identity. Equality refers to two instances having the same values for
//    their observable characteristics, such as two instances of the String type that have the same
//text. Identity, on the other hand, refers to whether two variables or constants point to the same
//instance in memory. Take a look at this sample code.
let x = 1
let y = 1
x == y // True
//Two constants, x and y, are created. They are both of type Int and hold on to the same value,
//1. Not surprisingly, the equality check, done via ==, evaluates to true. This makes sense
//because x and y hold on to exactly the same value.



//identity

//athena and hecate are both reference types because they point to an instance of the
//GreekGod class. Thus, you can check for identity on these two constants using the identity
//operator (===) to see whether they point to the same instance. Here is what that would look
//like:
athena === hecate // False


//: [Previous](@previous)
//: [Next Chapter](@next)

