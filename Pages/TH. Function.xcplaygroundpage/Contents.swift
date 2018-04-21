import Foundation


func area(length: Int, width: Int) -> Int{
    
    let areaOfRoom = length * width
    
    return areaOfRoom
    
}


let upperRoom = area(length: 5, width: 20)

var price = 0

func costOfTile(length: Int, width: Int, typeOfTile type: String = "Granite") -> Int{
    
    let areaOfPlace = area(length: length, width: width)
    
    switch type{
    case "Marble": price = areaOfPlace * 2
    case "Wood": price = areaOfPlace * 3
    case "Granite": price = areaOfPlace * 4
    default: price = 0
    
}
    return price
}

costOfTile(length: 3, width: 2, typeOfTile: "Granite")
costOfTile(length: 40, width: 10)
costOfTile(length: 3, width: 3)


func coordinates(for location: String) -> (Double, Double){
    var locations = (0.0,0.0)
    switch location{
    case "Eiffel Tower": locations = (48.8582, 2.2945)
    case "Great Pyramid": locations = (29.9792, 31.1344)
    case "Sydney Opera House": locations = (33.8587, 151.2140)
    default: (0.0,0.0)
    }
return locations
}

let answer2 = coordinates(for: "Great Pyramid")
print(answer2)


struct Person {
    let firstName: String
    let lastName: String

    
    func fullName() -> (String){
        return "\(firstName) \(lastName)"
    }
    
}

class Shape{
    
    var numberOfSides: Int
    
    
    init(numberOfSides: Int){
        
        self.numberOfSides = numberOfSides
        
    }
    
}

let someShape = Shape.init(numberOfSides: 5)
print(someShape.numberOfSides)

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business{
    
    let name: String
    let location: Location
    
    init(name: String, location: Location){
        
        self.name = name
        self.location = location
        
        
    }
}

let DunkinLocation = Location(latitude: 3.0, longitude: 3.0)

let someBusiness = Business(name: "DunkIn Donuts", location: DunkinLocation)

someBusiness.location
someBusiness.name
print(someBusiness.location, someBusiness.name)


