import UIKit

//check time needed to reach me
//check which company is nearer "uber or kareem"
//check if driver can take us to a specific detinsation
//check car size
//check which route is faster
//check driver's gender
//check if multi routes is available
//check drivers rating
//check if driver speaks arabic

class Driver {
    var name: String!
    var age: Int!
    var nationality: String!
    var language: String!
    var gender: String!
    var carType: String!
    var carModle: Int!
    var carSize: String!
    var location: String!
    
    init (name: String, age: Int, nationality: String, language: String, gender: String, carType: String, carModle: Int, carSize: String, location: String) {
        self.name = name
        self.age = age
        self.nationality = nationality
        self.gender = gender
        self.carType = carType
        self.carModle = carModle
        self.carSize = carSize
        self.location = location
    }
}

let driverOne = Driver(name: "Ahmad", age: 25, nationality: "Lebanese", language: "Arabic", gender: "Male", carType: "Mercedes", carModle: 2016, carSize: "L", location: "Beirut")
let driverTwo = Driver(name: "Hana", age: 23, nationality: "Jordanian", language: "English", gender: "Female", carType: "Toyota", carModle: 2018, carSize: "eco", location: "Amman")
//driverOne.location = "Tyre"

/////////////check if there is a near by driver////////////////
let myLocation = "Beirut"
if driverOne.location == myLocation {
    print("driverOne is available")
} else if driverTwo.location == myLocation {
    print("driverTwo is available")
} else {
    print("sorry no drivers available in your current location")
}
/////////////check if there is a near by driver////////////////


/////////////check car Type////////////////
let myPreferredCarType = "Toyota"
switch myPreferredCarType {
case driverOne.carType:
    print("my Preferred Car Type with \(driverOne.name!)")
    break
case driverTwo.carType:
    print("my Preferred Car Type with \(driverTwo.name!)")
    break
default:
    print("my Preferred Car Type not available")
}
/////////////check car Type////////////////


/////////check if driver available in current location and has my preferred car type////////////
//nested if
var driverName = ""
let myCurrentLocation = "Beirut"
if driverOne.location == myCurrentLocation {
    driverName = driverOne.name
    if driverOne.carType == myPreferredCarType {
        print("\(driverOne.name!) is available and has my preferred car type")
    }
    else {
        print("\(driverOne.name!) is available but not my preferred car type")
    }
} else if driverTwo.location == myCurrentLocation {
    driverName = driverTwo.name
    if driverTwo.carType == myPreferredCarType {
        print("\(driverTwo.name!) is available and has my preferred car type")
    } else {
        print("\(driverTwo.name!) is available but not my preferred car type")
    }
} else {
    print("sorry no drivers available in your current location")
}

//multiple conditions with 2 true events (AND)
if driverOne.location == myCurrentLocation && driverOne.carType == myPreferredCarType {
    print("\(driverOne.name!) is available and has my preferred car type")
}
else if driverTwo.location == myCurrentLocation && driverTwo.carType == myPreferredCarType {
    print("\(driverTwo.name!) is available and has my preferred car type")
} else {
    print("sorry no drivers available in your current location or with the preferred car type")
}
/////////check if driver available in current location and has my preferred car type////////////


/////////check if driver available in current location or has my preferred car type////////////
//multiple conditions with one true event (OR)
if driverOne.location == myCurrentLocation || driverOne.carType == myPreferredCarType {
    print("\(driverOne.name!) is available OR has my preferred car type")
}
else if driverTwo.location == myCurrentLocation || driverTwo.carType == myPreferredCarType {
    print("\(driverTwo.name!) is available OR has my preferred car type")
} else {
    print("sorry no drivers available in your current location and with the preferred car type")
}
/////////check if driver available in current location or has my preferred car type////////////


/////////check drivers nationality////////////
if driverName == driverOne.name {
    switch driverOne.nationality {
    case "Jordanian":
        print("drivers nationality: Jordanian")
        break
    case "American":
        print("drivers nationality: American")
    default:
        print("drivers nationality: \(driverOne.nationality!)")
    }
}
/////////check drivers nationality////////////
