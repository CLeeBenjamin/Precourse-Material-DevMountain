/*:
 # Arrays
 */

import Foundation

//:----------------------------------------Creating an Array---------------------------------------------------------------------

var bucketList: [String] = ["Climb Mt.Everest"]
var bucketList1 = ["sing"]

//:------------------------------Accessing and Modify Arrays---------------------------------------------------------------------

//append:
//bucketList.append("Fly like an eagle")
//bucketList.append("Fly like a pig")
//bucketList.append("Fly like a seahawk")
//bucketList.append("Fly like a seagulls")
//remove item:
//bucketList.remove(at:1)
////counting items in array:
//bucketList
//print(bucketList.count)
////subscripting
//print(bucketList[0...2])
////subscript and append
//bucketList[2] += " on mars"
//print(bucketList)
//bucketList[0] = "Fly like a pigeon"
//print(bucketList)

///using a loop to append an array:

var newItems = ["Fly like a pigeon", "Fly like a pig", "Fly like a seahawk on mars", "Fly like a seagulls"]

//for items in newItems{
//    bucketList.append(items)
//
//}
bucketList += newItems
print(bucketList)

//:---------------------------------------------Array Equality-------------------------------------------------------------
var lizasList = ["Fly like a pigeon", "Fly like a pig", "Fly like a seahawk on mars", "Fly like a seagulls"]

let equal = (lizasList == newItems)

//:----------------------------------------Immutable arrays---------------------------------------------------------------------
let food = ["pizza, burgers, cake, meat"]


//:------------------------------------------Bronze Challenge--------------------------------------------------------------------



//: [Previous](@previous)
//: [Next Chapter](@next)

