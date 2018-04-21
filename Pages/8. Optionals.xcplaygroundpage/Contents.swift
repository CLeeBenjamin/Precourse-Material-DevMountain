/*:
 # Optionals
 */

import Foundation

//:---------------------------------------------Optional Types---------------------------------------------------------------------

//var myString: String?
//myString = "people"
//print(myString)

var theError: String? = "this"
if theError != nil{
    let errorCodeString = theError!
    print(errorCodeString)
}

var thisTHing: Int?
var thisOne: Int
thisTHing = 23

//if thisTHing != nil{
//    thisOne = thisTHing!
//    print(thisOne)
//} else{
//    print("this has no value")
//
//}


//:----------------------------------------Optional Binding---------------------------------------------------------------------
if let thisOne = thisTHing{
    let addedTogherthisOne = thisOne + 20
    print(addedTogherthisOne)
}else {
print("there is no value")
}

/////Optional binding is a useful pattern that you can use to detect whether an optional contains a
//value. If there is a value, then you can assign it to a temporary constant or variable and make
//it available within a conditional’s first branch of execution.

///you can also nest optionals binding, like so:

var theErrorCodeString: String?
theErrorCodeString = "404"

//if let theError1 = theErrorCodeString{
//    if let theErrorCodeInt = Int(theError1){
//        print("\(theError1): \(theErrorCodeInt)")
//
//    }
//
//}

///you can unwrap multiple optionals in a better way like this:

if let theError1 = theErrorCodeString, let theErrorCodeInt = Int(theError1),
    theErrorCodeInt == 404{
    print("\(theError1): \(theErrorCodeInt)")
    
}

//:----------------------------Implicitly unwrapped optionals-------------------------------------------------------------

var errorCodeString: String!
errorCodeString = "404"
print(errorCodeString)

//:------------------------------------------Optional Chaining---------------------------------------------------------------------
//Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil.


//:----------------------------Modifying an optional in place --------------------------------------------------------------------

//upCaseErrorDescription?.append(" PLEASE TRY AGAIN.")
//upCaseErrorDescription

//:----------------------------Modifying an optional in place --------------------------------------------------------------------


//:----------------------------The Nil Coalescing Operator--------------------------------------------------------------------

var errorDescription: String?

let description = errorDescription ?? "No error"

//:-------------------------------------The Bronze Challenge--------------------------------------------------------------------




//: [Previous](@previous)
//: [Next Chapter](@next)

