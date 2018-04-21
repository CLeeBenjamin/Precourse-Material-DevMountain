/*:
 # Conditionals 
 */

import Foundation

//:---------------------------------------------If/Else---------------------------------------------------------------------
var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

if population < 1000{
    message = "\(population) is a small town!"
    
}else {
    message = "\(population) is a pretty big town"
    
}
    if !hasPostOffice{
    print("Where do we buy stamps?")
    
}

print(message)

//== Evaluates whether the value on the left is equal to the value on the right.//
//!= Evaluates whether the value on the left is not equal to the value on the right.//
// === Evaluates whether the two instances point to the same reference.//
//!== Evaluates whether the two instances do not point to the same reference.//



//:----------------------------------------Ternary Operators---------------------------------------------------------------------
//* The ternary operator is very similar to an if/else statement, but has the more concise syntax
// a ? b : c. In English, the ternary operator reads something like, “If a is true, then do b.
//Otherwise, do c.”

message = population < 10000 ? "\(population) is a small town!" :
"\(population) is pretty big!"
print(message)


//:---------------------------------------------Nested ifs---------------------------------------------------------------------

//You can nest if statements for scenarios with more than two possibilities. You do this by
//writing an if/else statement inside the curly braces of another if/else statement.

if population < 10000{
    message = "\(population) is a small town"
}
else {
        if population >= 10000 && population < 50000 {
             message = "\(population) is a medium town"
        }
        else{
            message = "\(population) is a big town"
        }
}

print(message)



//:---------------------------------------------Else If---------------------------------------------------------------------
//The else if conditional lets you chain multiple conditional statements together. else if
//allows you to check against multiple cases and conditionally executes code depending on
//which clause evaluates to true. You can have as many else if clauses as you want. Only one
//condition will match.

if population < 2000 {
    message = "\(population) is a small amount of people"
    
} else if population > 2000 && population < 4000{
    message = "\(population) is a medium size"
    
} else {
   message = "\(population) is pretty big"
}
print(message)



//:------------------------------------------Bronze Challenge--------------------------------------------------------------------

if population < 2000 {
    message = "\(population) is a small amount of people"
    
} else if population > 2000 && population < 4000{
    message = "\(population) is a medium size"
    
} else if population > 4000 && population < 7000{
    message = "\(population) is a huge size"
    
} else {
    message = "\(population) is pretty big"
}
print(message)


//: [Previous](@previous)
//: [Next Chapter](@next)


