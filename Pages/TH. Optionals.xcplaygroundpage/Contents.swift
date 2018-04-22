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

///raw values of enums

enum Coin: Double{
    case penny = 0.10
    case nickel = 0.05
    case dime = 0.01
    case quarter = 0.25
}

let coins: [Coin] = [Coin.dime, .nickel, .penny, .penny, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double{
    var total: Double = 0

    for coin in coins{
      total += coin.rawValue
        }
    
    return total
}

sum(having: coins)


///custom types do not work with raw values and are not associated values

///remember associated values are as such:


enum Airport {
    case munich
    case sanFrancisco
    case singapore
    case london(airportName: String) ///allows you to bind one (or several) additional values to an enum case.
}

///raw values also autoincrement as such that if you place a value on the first case, a value is automatically asssign to the following cases:

enum Days: Int{
   case sunday = 1
   case monday
    case tuesday
    case wed
    case thur
    case frid
}

print(Days.monday.rawValue)
print(Days.tuesday.rawValue)
print(Days.wed.rawValue)
print(Days.thur.rawValue)
print(Days.frid.rawValue)

///if you dont specify with string, swift will assing the case name as a string literal

enum People: String {
    case jim
    case joe
    case jack
    
    
}

print(People.jack.rawValue)
print(People.joe.rawValue)
print(People.jim.rawValue)
enum MagicValue: Int {
    case foo
    case bar
    case xyz = 100
    case zzz
}

print(MagicValue.foo.rawValue)
print(MagicValue.bar.rawValue)
print(MagicValue.xyz.rawValue)
print(MagicValue.zzz.rawValue)



/// Initializing With Raw Values

enum HTTPStatusCode: Int {
    case success = 200
    case forbidden = 403
    case unauthorized = 401
    case notFound = 404
}

let statusCode = 201

let httpStatusCode = HTTPStatusCode(rawValue: statusCode)
