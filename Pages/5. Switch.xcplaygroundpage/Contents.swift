/*:
 # Switch
 */

import Foundation




//:---------------------------------------What is a Switch---------------------------------------------------------------------

/* switch statements consider a particular value and attempt to
 match it against a number of cases. */
/*every case must have at least one executable line of code associated with
 it.*/





//:-------------------------------Switch it Up-----------------------------------------------------------------

/*
 var statusCode = 404
var errorString: String

switch statusCode {
case 400:
    print("Get a life")
case 401:
    print("Get a life")
case 402:
    print("Get a life")
case 403:
    print("Get a life")
case 404:
    print("Its this one")
default:
    print("Yeah!!!")
}
*/

var statusCode = 404
var errorString: String = "it does not work"

switch statusCode {
case 400, 401, 403, 404:
    errorString = "Get a life"
    
fallthrough
default:
errorString += "Please review the request and try again."
}


/* ---fallthrough statements-- (control transfer statement) Here, fallthrough tells the switch statement to “fall through” the bottom of a case to the next one. If a matching case has a fallthrough control transfer statement at the end of it, it will
 first execute its code, and then transfer control to the case immediately below.
 
 If you are familiar with other languages like C or Objective-C, you will see that Swift’s
 switch statement works differently. switch statements in those languages automatically fall
 through their cases. Those languages require a break control transfer statement at the end of
 the case’s code to break out of the switch. Swift’s switch works in the opposite manner. If you
 match on a case, the case executes its code and the switch stops running.*/


var statusCode2: Int = 200
var errorCode2: String = "The request field has the indicated error:"

switch statusCode2 {
case 100...110:
    errorCode2 += " Informational"
case 200...210:
    errorCode2 += " Successful but not content"
case 300...310:
    errorCode2 += " Redirection"
case 400...410:
    errorCode2 += " Client error"
default:
    errorCode2 = " Unknown."
}

print(errorCode2)
//this is called range mathcing//

//value binding///

//Value binding allows you to bind the matching value in a certain case to a local constant or
//variable. The constant or variable is available to use only within the matching case’s body.

//example//
var statusCode3: Int = 200
var errorCode3: String = "This is an error."

switch statusCode3 {
case 100:
    errorCode3 += "This is a \(statusCode3) error"
case let unknownCode:
    errorCode3 = "This \(unknownCode) is your actual problem"
}
print(errorCode3)

//problem sets with switch cases///

//If the user pressed number keys( from 0 to 9), the program will tell the number that is pressed,  otherwise, program will show "Not allowed".//

//two ways to answer this//

//1.
var numberKeyPressed: Int = 2
var whatKeyPressed: String = ""

switch numberKeyPressed {
case 0...9:
    whatKeyPressed += "You pressed \(numberKeyPressed)"
default:
    whatKeyPressed = "Not allowed"
}

print(whatKeyPressed)

///Where clauses//

//where allows you to check for additional conditions that must be met for the case to match and
//the value to be bound. This feature creates a sort of dynamic filter within the switch.

switch statusCode3 {
case 100, 101:
    errorString += " Informational, \(statusCode3)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode3)."
case 400...417:
    errorString += " Client error, \(statusCode3)."
case 500...505:
    errorString += " Server error, \(statusCode3)."
default:
    errorString = "\(statusCode3) is not a known error code."
}

// example of a where statement/// a temp that is above 70 and even ///

var temperatureOfARoom = 72
var goodTempature = "This is a good temp"

switch temperatureOfARoom {
case 0...50 where temperatureOfARoom % 2 == 0:
    goodTempature += " and its an even number"
case 51...65 where temperatureOfARoom % 2 == 0:
    goodTempature += " and its an even number"
case 66...79 where temperatureOfARoom % 2 == 0:
   print("its here")
default:
    "this is not a good temp"
}

let firstCode: Int = 400
let secondCode: Int = 200
let errorCodes = (code1: firstCode, code2: secondCode)

switch errorCodes {
case (400, 400):
    print("no items found")
case (_, 400):
    print("second not found")
case (400, _):
    print("first not found")
default:
print("no errors")
}


//:--------------------------------Switch vs if/Else---------------------------------------------------------------------

//******* if case  ********//
var age: Int = 33

if case 18...35 = age {
    print("Cool demographic")
}

if case 18...35 = age, age >= 21{
    print("age and can drink")
}
//This syntax is much more elegant. It simply checks to see whether age is in the given range.
//You did not have to write a default case that you did not care about. Instead, the syntax of the
//if-case allows you to focus on the single case of interest: whether age is in the range of 18
//to 35.





//:----------------------------------Bronze Challenge---------------------------------------------------------------------
let point = (x: 1, y: 4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && point.y > 0:
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && point.y < 0:
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && point.y < 0:
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("Case not covered.")
}


//:----------------------------------Silver Challenge---------------------------------------------------------------------



if case 18...35 = age, age >= 21, age != 30{
    print("this person is of age, can drink, and isnt 30")

}
else {
    print("whelp, cant get in")
}



//: [Previous](@previous)
//: [Next Chapter](@next)


