import Foundation

let friends = ["will", "johnny", "liza", "jim"]


for friend in friends{
    switch friend {
    case "will":
        print("tag this friend \(friend)")
    case "johnny":
        print("tag this friend \(friend)")
    default:
        print("we cant find them \(friend)")
    }
}


var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    switch key {
    case "VNM", "IND":
        asianCapitals.append(value)
    case "BEL","LIE", "BGR":
        europeanCapitals.append(value)
        
    default:
        otherCapitals.append(value)
        
}
    print(asianCapitals, europeanCapitals, otherCapitals)
}


