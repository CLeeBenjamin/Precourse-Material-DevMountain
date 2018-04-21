/*:
 # Strings
 */

import Foundation

//:------------------------------------------------------------------------------------------------------------------


//:----------------------------------------Working with Strings---------------------------------------------------------------------
let playGround = "This immutable"
var playGroundMutable = "this is mutable"

//so for example///
// I can do this:
playGroundMutable.append(" caston")
//or:
playGroundMutable += " okay"

//loop through string

for c in playGroundMutable{
    print("\(c)")
}

//:---------------------------------------------Unicode---------------------------------------------------------------------
////Unicode is an international standard that encodes characters so they can be seamlessly
//processed and represented regardless of the platform. Unicode represents human language
//(and other forms of communication like emoji) on computers. Every character in the standard
//is assigned a unique number.
let oneCoolDude = "\u{1F60E}"





//:------------------------------------------Bronze Challenge--------------------------------------------------------------------

let empty = ""
empty.isEmpty


//: [Previous](@previous)
//: [Next Chapter](@next)

