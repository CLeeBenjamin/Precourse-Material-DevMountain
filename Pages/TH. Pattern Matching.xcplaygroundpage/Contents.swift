//: [Previous](@previous)

///Pattern matching with Enums///

import Foundation


enum Coin: Double{
    case penny = 0.10
    case nickel = 0.05
    case dime = 0.01
    case quarter = 0.25
}

let bank: [Coin] = [.quarter, .dime, .nickel, .nickel, .penny, .penny]

///typically with pattern matching we utilize switch statements becasue they allow us to compare a statement to several cases, so below I want to see how many pennies I have in the array.///

///so i will first make a switch statement with one case for all the pennies
var count = 0

for coin in bank{
    switch coin {
    case .penny: count += 1
    default: continue
    }
    
}

///an alternative way, which is much more effecient and easy to read is
count = 0

for case .penny in bank{
    count += 1
    
}
///for the penny case in the array, i want the code to do something.
/// that's essentially what we have above
