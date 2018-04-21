/*:
 # Functions
 */

import Foundation

////:------------------------------------------Basic Function---------------------------------------------------------------------
//
//func printHello() {
//    print("Hello World")
//
//}
//
//printHello()
//printHello()
//
///////Here, you define a function with the func keyword followed by the name of the function:
////printGreeting(). The parentheses are empty because this function does not take any
////arguments.
//
////:----------------------------------------Function Parameters---------------------------------------------------------------------
//
////You use parameters to give a function some inputs. We call these parts of a function “parameters” to indicate that they can
////change value depending on the data the caller passes into the function.
////
////func printPersonalName(name: String){
////    print("hello, my name is \(name)")
////
////}
////printPersonalName(name: "caston")
////printPersonalName(name: "liza")
////printPersonalName(name: "mike")
//
////////As a quick aside, although the terms parameter and argument technically have different
////meanings, they are used interchangeably by some. Also, you may be wondering why we wrote
////printPersonalGreeting(name:) with name: inside of the parentheses. This signifies
////that printPersonalGreeting(name:) has one parameter whose name is used when
////calling the function, as in printPersonalGreeting(name: "Matt"). name must be used when
////the function is called. You will learn more about parameter visibility below.
//
//func addition(firstNum: Int, secondNum: Int) -> Int {
//
//return   (firstNum + secondNum)
//
//
//}
//
//addition(firstNum: 3, secondNum: 4)
//addition(firstNum: 6, secondNum: 9)
//
//
//func printPersonalName(by name: String){
//    print("hi \(name)")
//
//}
//printPersonalName(by: "liza")
//printPersonalName(by: "james")
//printPersonalName(by: "mike")
//
////Naming functions and parameters can be tricky, and it is more art than science. It is advisable
////to choose function and parameter names that are readable and informative. You should also
////strive to formulate grammatical phrases with your code. Last, you should always consider
////how easy it is to type out and call your functions.
//
/////varidic parameters
//
//
//func listOfNumbers(people: Int...){
//    for i in people{
//        print(i)
//    }
//}
//
//listOfNumbers(people: 1, 2, 3, 4, 5)
//
//func printPersonalGreetings(to names: String...) {
//    for name in names {
//        print("Hello \(name), welcome to the playground.")
//  }
//}
//
//printPersonalGreetings(to: "liza", "jane", "josh", "jim", "james")
//
//
/////default parameters//
//
//func differentNums(numerator: Int, denominator: Int, punctuation: String = "!"){
//    print("\(numerator) divided by \(denominator) eqauls \(numerator / denominator)\(punctuation)")
//
//}
//
//differentNums(numerator: 12, denominator: 3)
//differentNums(numerator: 15, denominator: 5, punctuation: "?")
//differentNums(numerator: 20, denominator: 4)
//
//
/////in-out parameters
//
//var firstNum = 3
//var secondNum = 2
//
//
//func incrementNums(a : inout Int, b : inout Int){
//    a = a + 1
//    b = b + 1
//    print(a, b)
//}
//
//incrementNums(a: &firstNum, b: &secondNum)
//
//func swapInt(first: inout Int, second: inout  Int){
//    let new = first
//    first = second
//    second = new
//}
//
//swapInt(first: &firstNum, second: &secondNum)
//firstNum
//secondNum
//
///// parameters are constants///
////func somethingToPractice(num: Int){
////    num++
////
////}/// cant do this
//
//let string1 = "james"
//
//
//var string2 = string1
//string2 += "liza"
//
//func somethingToPractice(num: Int){
//    var n = num
//    n += 5
//    print(n)
//    num
//}
//
//somethingToPractice(num: 8)
//
//var myName = "Caston"
//
//func fullName (name: inout String, withTitle title: String){
//    name = title + " " + name
//
//}
//fullName(name: &myName, withTitle: "Mr.")
//
//myName
//
//
//var yourName = "James"
//func fullName (name: String, withTitle title: String){
//    var name = name
//    name = title + " " + name
//
//}
//fullName(name: yourName, withTitle: "Mr.")
//yourName
//
/////inout allows the value of a variable to change after it has returned, what has been stated as "living beyond the function's body
//
//
////:-----------------------------------Returning from a function-------------------------------------------------------------------
//
//func areaOfTriangleWith(base: Double, height: Double) -> Double {
//
//    return base * height
//}
/////-> most important part
//
//
////:---------------------------------Nesting Functions and Scope-----------------------------------------------------------
//
//func averageAge(firstPerson: Int, secondPerson: Int, thirdPerson: Int) -> Int{
//    let agesTogether = firstPerson + secondPerson + thirdPerson
//    let totalPeople = 3
//    func divide() -> Int{
//       let average = agesTogether / totalPeople
//        return average
//    }
//    return divide()
//}
//
//averageAge(firstPerson: 25, secondPerson: 23, thirdPerson: 24)
//
//
//func averageAgeWithVaradic(age: Int...) -> Int{
//    let sumedArr = age.reduce(0, +)
//    let ageNumber = age.count
//
//    func divideAgain() -> Int{
//        let averageAgain = sumedArr / ageNumber
//        return averageAgain
//
//    }
//    return divideAgain()
//}
//
//averageAgeWithVaradic(age: 13, 14, 20, 25, 30, 35)
//
////:----------------------------------Return Multiple Values--------------------------------------------------------------------
//var listOfNumbers = [12, 13, 15, 16, 17]
//func sortEvenOddNumbers(numbers: [Int]) -> (evenNumbers: [Int], oddNumbers: [Int]){
//    var evenNumArray = [Int]()
//    var oddNumArray = [Int]()
//    for number in numbers{
//        if number % 2 == 0{
//            evenNumArray.append(number)
//
//        } else {
//            oddNumArray.append(number)
//
//        }
//
//    }
//      return(evenNumArray, oddNumArray)
//}
//
//let sortedNumbers = sortEvenOddNumbers(numbers: listOfNumbers)
//let oddNumbers = sortedNumbers.oddNumbers
//let evenNumbers = sortedNumbers.evenNumbers
//print(oddNumbers)
//print(evenNumbers)
//// :--------------------Optional Return Type----------------------------------------
//
//
///// func grabMiddleName(fromFullName name: (String, String?, String)) ->(String?){
//
//
//
////:----------------------Exiting Early from a function----------------------------
//
//
//func grabMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
//
//    guard let middleName = name.middle else{
//        print("hey there")
//        return
//
//    }
//    print("hey \(middleName)")
//}
//
//grabMiddleName(fromFullName: ("jamie", nil,  "curtis"))
//grabMiddleName(fromFullName: ("caston", "lee" , "boyd"))

//: --------------------------------Function Types ------------------------------------


//Thus, the function type for sortedEvenOddNumbers(_:) is expressed as ([Int]) -> ([Int], [Int]).



//: ------------------------Bronze Challenge ---------------------------------------

func grabMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.count <= 4  else{
        print("hey there")
        return
        }
   
    print("hey \(middleName)")
}

grabMiddleName(fromFullName: ("liza", "aqui", "howard"))


//: ------------------------------------------Silver Challenge------------------------------------

////* Write a function called siftBeans(fromGroceryList:) that takes a grocery list (as an
//array of strings) and “sifts out” the beans from the other groceries. The function should take
//one argument that has a parameter name called list, and it should return a named tuple of
//the type (beans: [String], otherGroceries: [String]).

var listOfItems = ["lima beans", "black beans", "red beans", "chicken", "turkey", "noodle", "beans"]

func siftBeans(fromGroceryList List: [String]) -> (beans: [String], otherGroceries: [String]){
    var mybeans = [String]()
    var myGroceries = [String]()
    for items in List {
        if items.hasSuffix("beans"){
        mybeans.append(items)
        } else {
            
            myGroceries.append(items)
        }
        
    }
    return(mybeans, myGroceries)
}

siftBeans(fromGroceryList: listOfItems)
let sortedBeans = siftBeans(fromGroceryList: listOfItems)
let beans = sortedBeans.beans
let groceries = sortedBeans.otherGroceries
print(beans, groceries)

//: ------------------------------------Void-----------------------------------

// takes no arguments and return void


//: [Previous](@previous)
//: [Next Chapter](@next)

