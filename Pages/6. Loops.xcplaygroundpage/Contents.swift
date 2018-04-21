/*:
 # Loops
 */

import Foundation

//:---------------------------------------------For in Loops---------------------------------------------------------------------

var myFirstString: Int = 0

//explicit use of i iterator
//for i in 1...5{
//    myFirstString += 1
//    myFirstString
//    print(myFirstString)
//}

//for i in 1...5{
//    myFirstString += 2
//    myFirstString
//    print(myFirstString)
//}

// the range is the actual number of times it will iterate, so for the set above it iterates five time with 2 increments


//*where clause*///
///in iteration allows specification of iteration
//
//for i in 1...100 where i % 3 == 0{
//    print(i)
//}
//
//for i in 1...100 {
//    if i % 3 == 0 {
//        print(i)
//    }
//} ///this is similar but less elegant///

//:----------------------------------------While Loops---------------------------------------------------------------------
//increment is like a crank or pump.///

////var i: Int = 1
//
//while i < 6 {
//    myFirstString += 1
//    print(myFirstString)
//    i += 1
//
//}


//i is declared as a variable because the condition you evaluate (i < 6) must be able to change.
//Remember, the while loop will run as long as the condition it checks is true. Thus, the
//condition for a while loop often checks some kind of state that will change at some point.
//Otherwise, if the state the condition examines never changes (or is always true), then the
//while loop will execute forever. Loops that never end are called infinite loops, and they are
//usually bugs.

//:---------------------------------------Repeat while loops---------------------------------------------------------------------

//the difference between a while loop and repeat while loops is that the repeat while loop will execute the block before checking if it meets conditions then it will check the conditions. its like the difference between seeing if the apple is bad or not and then eating or eating and seeing if the apple is bad.//




//:------------------------------Control Transfer Statements---------------------------------------------------------------------
///continue//
///break///


//:---------------------------------Silver Challenge------------------------------------------------------------------
//Fizz Buzz is a game used to teach division. Create a version of the game that works like this:
//For every value in a given range, print out “FIZZ” if the current number is evenly divisible by
//3. If the number is evenly divisible by 5, print out “BUZZ.” If the number is evenly divisible
//by both 3 and 5, then print out “FIZZ BUZZ.” If the number is not evenly divisible by 3 or 5,
//then simply print out the number.



//for i in 1...100{
//    if i % 3 == 0 && i % 5 == 0 {
//        print("Fizz Buzz")
//    }
//    else if i % 3 == 0 {
//            print("Fizz")
//        }
//    else if i % 5 == 0{
//    print("Buzz")
//    }else {
//        print(i)
//    }
//}

////For bonus points, solve Fizz Buzz with both an if/else conditional and a switch statement.
//When using the switch, make sure to match against a tuple in its various cases.

//var numberUsed = arc4random_uniform(100)
//
//var divisibleByThree = numberUsed % 3
//var divisibleByFive = numberUsed % 5
//var divisibleByBoth = (numberUsed % 5, numberUsed % 3)
//
//
//if divisibleByBoth == (0, 0){
//    print("FizzBuzz")
//} else if  divisibleByThree == 0 {
//    print("Fizz")
//} else if divisibleByFive == 0 {
//    print("Buzz")
//}else{
//    print(numberUsed)
//}


var i = arc4random_uniform(200)

let divisibleByBoth = (i % 3, i % 5)

switch divisibleByBoth {
case (_, 0):
    print("Buzz")
case (0,_):
    print("Fizz")
case (0, 0):
    print("FizzBuzz")
default:
    print(i)
}


//: [Previous](@previous)
//: [Next Chapter](@next)

