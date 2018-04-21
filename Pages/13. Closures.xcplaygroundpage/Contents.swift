/*:
 # Closures
 */

import Foundation

//:-------------------------------------------Closure Syntax---------------------------------------------------------------------
let peopleVolunteering = [1, 4, 65, 42, 30, 14, 25, 36, 72]

func highToLow(_ level1: Int, _ level2: Int) -> Bool {
    return level1 > level2
}

var higherNumberToLow = peopleVolunteering.sorted(by: highToLow)

let namesOfPeople = ["james", "mike", "jane", "tyrone", "rick", "jacob", "andaknfdkand;kaf"]

func sortedNames(_ level3: String, _ level4: String) -> Bool {
    return level3.count > level4.count
}
var nameOrderfromStringCount = namesOfPeople.sorted(by: sortedNames)

//:--------------------------------Closure Expression Syntax---------------------------------------------------------------------
///this puts the closure in an expression:

let namesSorted = namesOfPeople.sorted(by: {(i: String, j: String) -> Bool in return i.count > j.count })
print(namesSorted)

/// a faster alternative to this is

let itBeSortedQuickly = namesOfPeople.sorted(by: {i, j in i.count > j.count})
print(itBeSortedQuickly)


///shorthand syntax for arguments

let itBeSortedEvenQuickerShorthand = namesOfPeople.sorted(by: { $0.count > $1.count})
print(itBeSortedEvenQuickerShorthand)

/// inline closure

let inlineClosureBeAdded = namesOfPeople.sorted {$0.count > $1.count}
print(inlineClosureBeAdded)

//:---------------------------------Functions as Return Types ---------------------------------------------------------------------

/// now we're making a function return another function:
/// example:

func diversifyBoston() -> (Int, Int) -> Int {
    func addpeople(byforeignPeople foreign: Int, todomesticPeople domestic: Int) -> Int{
       return foreign + domestic
    }
    return addpeople
}

var numbersDiversified = 30
let diversify = diversifyBoston()
numbersDiversified = diversify(30, 45)
print(numbersDiversified)



//:--------------------------------------Functions as arguments------------------------------------------------------------
//func diversifyBostonAgain(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> (Int))?{
//    if condition(budget){ func addpeople(byforeignPeople foreign: Int, todomesticPeople domestic: Int) -> Int{
//        return foreign + domestic
//        }
//        return addpeople
//
//    }else {
//        return nil
//    }
//    func evaluate(budget: Int) -> Bool{
//        return budget > 10_000
//
//    }
//
//}


//:---------------------------------Closure Captures Value---------------------------------------------------------------

func makeIncrementer(forIncrement amount: Int) -> () -> Int{
     var runningTotal = 0
    
    func incrementer() -> Int{
        runningTotal += amount
        print(runningTotal)
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()


///so I guess? the function withing makeIncremementer is keeping an internal running total which is created by the closure
/// Capturing by reference ensures that runningTotal and amount do not disappear when the call to makeIncrementer ends, and also ensures that runningTotal is available the next time the incrementer function is called. Thus the reason the number can be incremented by 10 every time///

///: -----------------------------Closures are reference types-------------------------------
//Closures are reference types. This means that when you assign a function to a constant or
//variable, you are actually setting that constant or variable to point to the function. You are not
//creating a distinct copy of that function. One important consequence of this fact is that any
//information captured by the function’s scope will be changed if you call the function via a
//new constant or variable.


///: -----------------------------Functional Programming-------------------------------

let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2    
}
projectedPopulations


//: -------------------------------Bronze Challenge------------------------------------

let peopleVolunteering1 = [1, 4, 65, 42, 30, 14, 25, 36, 72]

peopleVolunteering1.sorted()

//: [Previous](@previous)
//: [Next Chapter](@next)

