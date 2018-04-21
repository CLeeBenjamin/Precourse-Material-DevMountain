//: [Previous](@previous)

import Foundation

struct Person{
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String{
        if middleName == nil {
            return firstName + " " + lastName
        }
        else {
            return firstName + " " + middleName! + " " + lastName
            
        }
    }
    
}

let caston = Person(firstName: "case", middleName: nil, lastName: "boyd")
caston.fullName()

let flordeliza = Person(firstName: "flordeliza", middleName: nil, lastName: "howard")
print(flordeliza.fullName())



let airportCodes = ["BOS": "Logan Airport"]
let newYorkAir = airportCodes["jfk"]


if let newYorkAirport = airportCodes["jfk"]{
    print(newYorkAirport)
    
}else {
    
    print("that doesnt exist")
}

///many optionals bindings

let aStringOfString: [String : [String:String]] = [
    "jim" : ["male":"24"],
    "mike" : ["male":"24"],
    "jake" : ["male":"24"]
]

if let mike = aStringOfString["jim"], let myBoy = mike["male"]{
    print(myBoy)
}

///downsides of using if let



///early exit
///guard statements

///raw enums

enum Coin {
    case penny
    case nickel
    case dime
    case quarter
}

let coins: [Coin] = [Coin.dime, .nickel, .penny, .penny, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double{
    var total = 0
    
    
    return 1.0
    
}

