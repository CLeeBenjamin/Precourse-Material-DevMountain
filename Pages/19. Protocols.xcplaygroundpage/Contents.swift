/*:
 # Protocols
 */

import Foundation

//:------------------------------------------------------------------------------------------------------------
func printTable(_ data: [[String]]) {
    for cell in data {
        // Start the output string
        var out = "|"
        // Append each item in this row to the string
        for item in cell {
            out += " \(item) |"
        }
        // Done - print it!
        print(out)
    }
}

let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    
]
//printTable(data)


func printATable(_ theDataBase: [[String]], withColumnLabels columnLabels: String...){
    var firstRow = "|"
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.count)
    }
    print(firstRow)
    
    for eachCount in theDataBase{
        var addAStartingBracket = "|"
        
//        for afterEveryStartingBracket in eachCount{
//            addAStartingBracket += " \(afterEveryStartingBracket) |"
        
            for (j, afterEveryStartingBracket) in eachCount.enumerated() {
                let paddingNeeded = columnWidths[j] - afterEveryStartingBracket.count
                let padding = repeatElement(" ", count:
                    paddingNeeded).joined(separator: "")
                addAStartingBracket += " \(padding)\(afterEveryStartingBracket) |"
            }
            
            print(addAStartingBracket)
        }
    
    }


//let database = [
//    ["Joe", "30", "6"], ["Karen", "40", "18"], ["Joe", "30", "6"], ["Karen", "40", "18"], ["Joe", "30", "6"],
//    ["Karen", "40", "18"]
//    ]
//
////printATable(database)
//printATable(database, withColumnLabels: "Employee Name", "Age", "Years of Experience")

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}
struct Department {
    let name: String
    var people = [Person]()
    init(name: String) {
        self.name = name
    }
    mutating func add(_ person: Person) {
        people.append(person)
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "nick", age: 32, yearsOfExperience: 5))
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))


//:----------------------------------------Protocols--------------------------------------------------------------------

//A protocol allows you to define the interface you want a type to satisfy. A type that satisfies a
//protocol is said to conform to the protocol.

//:---------------------------------------------Nested ifs---------------------------------------------------------------------



//:---------------------------------------------Else If---------------------------------------------------------------------



//:------------------------------------------Bronze Challenge--------------------------------------------------------------------



//: [Previous](@previous)
//: [Next Chapter](@next)

