//: [Previous](@previous)

import Foundation

class Address {
    var buildingName: String?
    var buidlingNumber: String?
    var street: String?
    
}

class Residence {
    var numberOfRooms = 1
    var address: Address?

}

class Person{
    var residence: Residence?
    
}

let susan = Person()

let address = Address()
address.buidlingNumber = "10"
address.buildingName = "Mike"
address.street =  "Lincoln"

let residence = Residence()
residence.address = address

susan.residence = residence

///now if we have to ship something to susan, it would require her complete address

if let home = susan.residence, let postalAddress = home.address, let buildNum = postalAddress.buidlingNumber, let convertNum = Int(buildNum){
    
    print(convertNum)
    
}


///below is optional chaining, it allows you to 
let buildNum = susan.residence?.address?.buidlingNumber

