/*:
 # Structs and Classes
 */

import Foundation

//:---------------------------------Type Methods---------------------------------------------------------------------
///methods are functions that are associated with a type. In other words, all methods are functions, but not all functions are methods. ///
class Player{
    static var playersInTheGame: Int = 0
    var name: String
    
    
    init(name: String) {
        self.name = name
        Player.playersInTheGame
        
    }
    func shoot() {
        
    }
    func printNumOFPlayer() {
        print(Player.playersInTheGame)
    }
    
    
}

////so right now we will call methods for the instnace of the clas player

var a = Player(name: "Jim")
var b = Player(name: "Joe")
var c = Player(name: "Jane")
var d = Player(name: "Jake")
var e = Player(name: "Jim")
Player.init(name: "jakes")

print(a.name)
print(b.name)
print(c.name)
print(d.name)
///the above are all instances of a class called player. these are called instance methods. the instances has acess to these properties
///now typically people use type methods to increment the number of instances of a class so for example: we created the counter in the Player class and created the types own method

////thus, type methods allows for global data to be stored for use even when instances are employed


//:----------------------------------------Mutating Methods---------------------------------------------------------------------

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

var liza = greet(name: "jane", withGreeting: "hi")

func greeting(forName name: String) -> (String) -> String {
    func greeting(_ greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let jane = greeting(forName: "Mike")
let janeMeet = jane("hi")
print(janeMeet)




//: [Previous](@previous)
//: [Next Chapter](@next)

