
/*:
 # Initialization
 */

import Foundation

//:----------------------------------Initializer Syntax---------------------------------------------------------------------
//Defining an initializer on the type is
//another way to ensure that properties have values when the instance is created.


//:----------------------------Struct Initialization---------------------------------------------------------------------

struct RocketConfiguration {
    let name: String = "Athena 9 Heavy"
    let numberOfFirstStageCores: Int = 3
    let numberOfSecondStageCores: Int = 1
    let numberOfStageReuseLandingLegs: Int? = nil
    
}
let athena9Heavy = RocketConfiguration()

//This uses a default initializer to instantiate athena9Heavy. In the default initializer, the name of the type is followed by empty parentheses.

///memberwise initializers-
struct RocketStageConfiguration {
    let propellantMass: Double
    let liquidOxygenMass: Double
    let nominalBurnTime: Int = 81
}

let stageOneConfiguration = RocketStageConfiguration(propellantMass: 119.1,
                                                     liquidOxygenMass: 276.0)





///None of RocketStageConfiguration‘s stored properties have default values. Also, there is no initializer implemented for RocketStageConfiguration. Why isn’t there a compiler error? Swift structures (and only structures) automatically generate a memberwise initializer. This means you get a ready-made initializer for all the stored properties that don’t have default values. This is super handy, but there are several gotchas.
//i think of memberwise initializers as a group that's hard to be a part of or a bachelors group


struct Weather {
    let temperatureCelsius: Double
    let windSpeedKilometersPerHour: Double
    
   ////custom initializer ////
    init(temperatureFahrenheit: Double = 72, windSpeedMilesPerHour: Double = 5) {
        self.temperatureCelsius = (temperatureFahrenheit - 32) / 1.8
        self.windSpeedKilometersPerHour = windSpeedMilesPerHour * 1.609344
    }
    
    
}

let currentWeather = Weather(temperatureFahrenheit: 30, windSpeedMilesPerHour: 20)
currentWeather.temperatureCelsius
currentWeather.windSpeedKilometersPerHour

///so custom initializers are what actually goes in your data type as an actual property of the type
// it also is a method too in that it can perform a fuction upon creating an instance of the type



/// avoid duplicating initialization/// initializer delegation

struct GuidanceSensorStatus {
    var currentZAngularVelocityRadiansPerMinute: Double
    let initialZAngularVelocityRadiansPerMinute: Double
    var needsCorrection: Bool
    
    init(zAngularVelocityDegreesPerMinute: Double, needsCorrection: Bool) {
        let radiansPerMinute = zAngularVelocityDegreesPerMinute * 0.01745329251994
        self.currentZAngularVelocityRadiansPerMinute = radiansPerMinute
        self.initialZAngularVelocityRadiansPerMinute = radiansPerMinute
        self.needsCorrection = needsCorrection
    }
    
    init(zAngularVelocityDegreesPerMinute: Double, needsCorrection: Int) {
            self.init(zAngularVelocityDegreesPerMinute: zAngularVelocityDegreesPerMinute,
                      needsCorrection: (needsCorrection > 0))
        }
    }

let guidanceStatus = GuidanceSensorStatus(zAngularVelocityDegreesPerMinute: 2.2, needsCorrection: 0)
guidanceStatus.currentZAngularVelocityRadiansPerMinute // 0.038
guidanceStatus.needsCorrection

//:---------------------------------Class Initialization---------------------------------------------------------------------

// classes add the concepts of designated and convenience initializers.

//Designated initializers are responsible for making sure
//that an instance’s properties all have values before initialization completes, thus making the
//instance ready to use. Convenience initializers supplement designated initializers by calling
//across a class to its designated initializer. The


////avoid


//:-----------Designated Initializers---------------------------------------------------------------------
class RocketComponent {
    let model: String
    let serialNumber: String
    let reusable: Bool
    
    // Init #1a - Designated
    init(model: String, serialNumber: String, reusable: Bool) {
        self.model = model
        self.serialNumber = serialNumber
        self.reusable = reusable
    }
    convenience init(price: Int) {
        self.init(price: 200)
    }
    
}

//desginated initializers are initialization for superclasses inorder that all subclasses have a value at the point of initialiation
// in other words, its an easy way for a subclass to have value of its own by inadvertently assigning value to the superclass



class ApartmentComplex{
    let room: Int
    let tenant: String
    let price: Int
 
    init(room: Int, tentant: String, price: Int) {
        self.room = room
        self.tenant = tentant
        self.price = price
        
    }
    
    convenience init(room: Int, tentant: String) {
        self.init(room: room, tentant: tentant, price: 200)
    }
    
}

let tenant1 = ApartmentComplex(room: 1, tentant: "James", price: 500)
print(tenant1.price, tenant1.room, tenant1.tenant)
let tenant2 = ApartmentComplex(room: 2, tentant: "Mike")
print(tenant2.tenant, tenant2.room, tenant2.price)
let tenant3 = ApartmentComplex(room: 3, tentant: "Chris")
print(tenant3.tenant, tenant3.room, tenant3.price)

///the convenience initializer calls the self designated init



///required initializers


///allows you to make a requirement for a subclass to have a superclasses initializer

//example: Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer:


///deinit
class User {
    var name: String
    
    init(name: String) {
        self.name = name
        print("User \(name) is initialized")
    }
    
    deinit {
        print("User \(name) is being deallocated")
    }
}

do{
let user1 = User(name: "John")
}



///failable initializers

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}


//
//notice that the deinitializer accesses the Zombie’s name.
//Deinitializers have full access to an instance’s properties and methods.


//
/////designated initializers provide designated initializer because it provides default values for all new properties it
////adds and it does not define its own designated initializer.
////Classes use designated initializers as their primary initializers. As part of this role, designated
//initializers are responsible for ensuring that the class’s properties are all given values before
//initialization is ended. If a class has a superclass, then its designated initializer must also call
//its superclass’s designated initializer.
//You have already written a designated

//:------------------------------------------Bronze Challenge--------------------------------------------------------------------



//: [Previous](@previous)
//: [Next Chapter](@next)
