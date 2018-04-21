import Foundation

struct Point {
    let x: Int
    let y: Int
    
    ///returns surrounding points
    ///in range of the current one
    func points(inRange range: Int) -> [Point]{
        var results = [Point]()
        let lowerBoundOfXRange = range - 1
        let upperBoundOfXRange = range + 1
        
        let lowerBoundOfYRange = range - 1
        let upperBoundOfYRange = range + 1
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange{
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
            
        }
        return results
}
}


class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

class Doctor: Person{
    
    override init(firstName: String, lastName: String) {
        
        super.init(firstName: firstName,  lastName: lastName)
    }
    
    override func fullName() -> String {
        return "Dr.\(firstName) \(lastName)"
        
    }
}

let someDoctor = Doctor(firstName: "Hames", lastName: "Johnson")


