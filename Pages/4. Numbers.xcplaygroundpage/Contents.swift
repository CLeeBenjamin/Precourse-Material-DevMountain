/*:
 # Numbers
*/
 
import Foundation




//:---------------------------------------------Intergers---------------------------------------------------------------------

// integers do not have decimals.

print("The max Int is \(Int.max)")
print("The min Int is \(Int.min)")

////Why are those numbers the minimum and maximum Int values? Computers store integers in
// binary form with a fixed number of bits. A bit is a single 0 or 1.
//In macOS, Int is a 64-bit integer, which means it has 264 possible values

//If you write an iOS app for newer devices, which is called “targeting a 64-bit
//architecture,” Int is a 64-bit integer just like in macOS. On the other hand, if you target a 32-
//bit architecture like iPhone 5 or iPad 2, Int is a 32-bit integer.



//:-------------------------------Creating Integers Instances-----------------------------------------------------------------

let numberOfPages: Int = 10 // Declares the type explicitly
let numberOfChapters = 3 // Also of type Int, but inferred by number
let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// an invalid value with a certain instance can create error. For example:

// Trouble ahead!
//let firstBadValue: UInt = -1 /// this is not a possible value
//let secondBadValue: Int8 = 200// not a possible value

print(Int8.max)
print(UInt.min)





//:--------------------------------Opersations on Integers---------------------------------------------------------------------
//The compiler respects the mathematical principles of precedence and associativity, which
//define the order of operations when there are multiple operators in a single expression.

print(10*15)
print(10*20)
print(10*15+30)

//parentheses first//
print(10+5*20)
print((10+5)*20)

//:Integer division

print(11/3)

//:Operator shorthand
var x = 10

x += 10
print(x)

//:Overflow operators
let y: Int8 = 120
let z = y &+ 10
print("120 &+ 10 is \(z)")



//:---------------------------Converting Between Integer Types------------------------------------------------------------------

let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // Uh-oh!
let c = a + Int16(b)


//:--------------------------------Floating-Point Numbers-----------------------------------------------------------------

/*First, in computers floating-point numbers are stored as a mantissa and an exponent, similar to how you write a
number in scientific notation. For example, 123.45 could be stored as something like 1.2345 x
102 or 12.345 x 101 */




//:----------------------------------Bronze Challenge---------------------------------------------------------------------

/*
Set down your computer and grab a pencil and paper for this challenge. What is the binary
representation of -1 using an 8-bit signed integer? 11111111
 
If you took that same bit pattern and interpreted it as an 8-bit unsigned integer, what would the
value be? 00000000
 
*/



//: [Previous](@previous)
//: [Next Chapter](@next)

