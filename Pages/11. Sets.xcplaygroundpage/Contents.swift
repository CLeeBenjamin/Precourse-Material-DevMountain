/*:
 # Sets
 */

import Foundation

//:---------------------------------------------Getting a Set---------------------------------------------------------------------
var groceryBag: Set = ["chips", "hotdogs", "water", "spinach"]
var sisterGroceries: Set = ["steak", "hotdogs", "milk", "toothpaste"]


for food in groceryBag{
    print(food)
}

let ourGroceries = groceryBag.union(sisterGroceries)
print(ourGroceries)

var lists = [String]()

for elements in ourGroceries{
    print(elements, separator: "]", terminator: ", ")
    
}

let ourGroceries2 = groceryBag.intersection(sisterGroceries)
let ourGroceries3 = groceryBag.isDisjoint(with: sisterGroceries)

//:----------------------------------Bronze Challenge---------------------------------------------------------------------
let myCities = Set(["Atlanta", "Chicago",
                    "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

myCities.isSuperset(of: yourCities)



//:---------------------------------------------Nested ifs---------------------------------------------------------------------



//:---------------------------------------------Else If---------------------------------------------------------------------



//:------------------------------------------Bronze Challenge--------------------------------------------------------------------



//: [Previous](@previous)
//: [Next Chapter](@next)

