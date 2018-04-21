


/*:
 # Properties
 */

import Foundation
////Properties model the characteristics of the entity that a type represents. They do this by
////associating values with the type. The values properties can take may be constant or variable
////values. Classes, structures, and enumerations can all have properties. Properties can be of two varieties: stored and computed. Stored properties can be given
//default values, and computed properties can return the result of some calculation based on
//available information


//:-------------------------------------Basic Stored Properties---------------------------------------------------------------------



//:----------------------------------Nested Store Types ---------------------------------------------------------------------
//Nested types are types that are defined within another enclosing type. They are often used to
//support the functionality of a type and are not intended to be used separately from that type.
//You have seen nested functions already, which are similar.


//:-------------------------------Lazy Stored Properties---------------------------------------------------------------------

//Sometimes a stored property’s value cannot be assigned immediately. The necessary information may be available, but computing the values of a property immediately would be costly in terms of memory or time. Or, perhaps a property depends on factors external to the type that will be unknown until after the instance is created. These circumstances call for lazy loading.


//:----------------------------------Computed Properties---------------------------------------------------------------------


///getters and setters
struct Square {
    var side: Double;
    
//    func area() -> Double {
//        return side * side
//    }
//

    var area: Double{
        get{
          return side * side
        }
        set(newArea){
            side = sqrt(newArea)
        }
    }
}

var ref = Square(side: 4)
print(ref)

//area.ref()// you dont need brackets for var in struct but for func area

ref.area = 28
print(ref)

///getter allows you to gather and compute a property while the setter allows you to set a new property in the instance

//:---------------------------------Property Observers-------------------------------------------------------------------
//: Property observers are Swift's way of letting you attach functionality to changes in property values.


class Button{
    var color: String = "blue"{
    willSet{
    print("the color is \(newValue)")
    }
}
}

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps


//: ----------------------------------------------Type Properties--------------------------------------------------

//: -----------------------------------Access Control---------------------------------

//You can grant components of your code specific levels of access to other components of your
//code. This is called access control.

//public - Entities are visible to all files in the module and those that import the module.
//internal - Entities are visible to all files in the module and those that import the module.
//private - Entities are visible only within their defining scope.
//fileprivate - Entities are visible only within their defining source file.
///open - Entities are visible and subclassable to all files in the module as well as those that import the module.


///: ------------------------------------------Bronze Challenge ---------------------------------

//: Your town’s mayor is busy. Every birth and relocation does not require the mayor ’s attention. After all, the town is in crisis! Only log changes to the town’s population if the new population is less than the old value.





//: [Previous](@previous)
//: [Next Chapter](@next)
