/*:
 # Dictionaries
 */

import Foundation

//:---------------------------------------------Dictionaries---------------------------------------------------------------------

//But order is not always important. Sometimes you simply want to hold on to a set of
//information in a container and then retrieve the information as needed. That is what
//dictionaries are for.
//A Dictionary is a collection type that organizes its content by key-value pairs. The keys in
//a dictionary map onto values.



//:----------------------------------------Creating a Dictionary-------------------------------------------------------------------

var dict1: Dictionary<String, Double> = [:]
var dict2 = Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()


//:----------------------------------Populating Dictionary---------------------------------------------------------------------

var movieRating: [String:Int] = ["godfather":5,"goodfellas":4, "american ganster":0]
print(movieRating)
movieRating.updateValue(10, forKey: "american ganster")
print(movieRating)


//:------------------------------------------Access and Modify---------------------------------------------------------------------
/////why the optional:
////Returned dictionary values are always optionals. At any given time, I do not know if there is a certain type of pie or not in my dictionary. If I tried piePrice["Coconut Cream"] I need some way to tell me that there is no coconut cream pies in my dictionary. Type
//1
//piePrice["Coconut Cream"]
//The playground returns nil. Swift makes the return value of a dictionary an optional value, so it will return nil if there is no such entry.


movieRating.count
if let americanGansterRate = movieRating["american ganster"]{
    print(americanGansterRate)
    
}else {
        print("this movie has not been rated")
    }


var toppings = ["Pepperoni":0.25,
                "Sausage":0.26,
                "Onions":2,
                "Green Peppers":3,
                "Cheese": 2]

toppings["Sausage"] = 1
print(toppings)

toppings.updateValue(3, forKey: "Sausage")
print(toppings)

//:------------------------------------Looping--------------------------------------------------------------------

for (key, value) in movieRating{
    print("I love \(key) because it has a \(value) rating")
}

for (movie) in movieRating.keys{
    
    print("he has rated \(movie)")
}
//:-----------------------------------Immutable Dictionary--------------------------------------------------------------------
//
//Creating an immutable dictionary works much the same as creating an immutable array. You
//use the let keyword to tell the Swift compiler that you do not want your instance of
//Dictionary to change. Create an immutable dictionary that lists the track names of a short
//fictional album along with each track’s length in seconds.

let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221]

//:--------------------------Translating a Dicitonary to an array-----------------------------------------------------------------

let theMovies = Array(movieRating.keys)
print(theMovies)


//:--------------------------Silver Challenge-----------------------------------------------------------------
////It is not uncommon to place instances of the Array type inside of a dictionary. Create a
//dictionary that represents a state. Your dictionary’s keys will refer to counties (to keep it
//    short, only include three counties). Each key should map onto an array that holds five of the
//zip codes within that county. (You can make up the county names and zip codes.)
//Finally, log only the dictionary’s zip codes. Your result should look something like the output
//below. Note that we are formatting the zip codes so that they do not overflow the page. Your
//zip codes may appear in a single line.

var boston = [02101, 02122, 02111]
var cambridge = [02138, 02139, 02140]
var quincy = [02122, 02169, 02170]

var massaschusetts: [String : [Int]] = ["boston": boston, "cambridge": cambridge, "quincy": quincy]
var MassZips = Array(massaschusetts.values)
print(MassZips)


//:--------------------------Gold Challenge-----------------------------------------------------------------


var intArray = [Int]()

for element in MassZips{
    intArray.append(contentsOf: element)
    print(intArray)
}

print(intArray)

//: [Previous](@previous)
//: [Next Chapter](@next)

