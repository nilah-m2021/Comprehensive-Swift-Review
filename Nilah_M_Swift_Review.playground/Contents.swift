/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit

/*:

- Variables

Create a variable called name and initialize it to the name of your favorite actor, singer, or sports celebrity */
var name: String = "Zendaya Coleman"
/*:
- Displaying on the screen

Display the contents of name on the screen

 Change the value of name to your name*/
print(name)
//name = "Nilah"
name = "Your Name = Nilah"
/*:
- Constants
 
Display the contents of name

Create a constant (let instead of var) called language and initialize it to "Swift"

Display the contents of the language constant on screen

Create 3 different constants and initialize them to hold integers of your choice. Name the constants a, b, and c

Create 3 constants that are doubles (they have decimal points) Initialize them with values of your choice. Name the constants d, e, and f*/
print(name)
let language:String = "Swift"
print(language)

let a = 1, b = 2, c = 3
let d:Double = 1.20
let e:Double = 3.45
let f:Double = 6.78


/*:
- Operators

Create an assortment of statements using the constants that you created that will perform the following actions - then display the equation and the result on the screen.*/
let addition = a + b + c + Int(d)
let subtraction = f - e
let divison = b / a
let multiplication = d * Double(b)

/* var resultMath = (Double(a) + Double(b)) / Double(c) * d + f
var x = a + b / c
print (resultMath)
*/
/*:
- Add two constants
 
-                print("a + b = " ) + (a + b)

Addition sample with at least 4 constants

Subtraction sample

Division sample

Multiplication sample*/
print("a + b + c + d = " + String(addition))
print("f - e = " + String(subtraction))
print ("b / a = " + String(divison))
print ("d * b = " + String(multiplication))
/*:
- If Statements
 
Use the following constants to solve the problems :*/
 
let temperature = 90
let raining = true
let time = "Morning"

// Write a statment that tells someone to wear shorts if it is over 80 degrees, and jeans if it is less than 80 degrees. Check with the temperature constant.
/*: Write a statement that tells someone to wear shorts if it is over 80 degrees, and jeans if it is less than 80 degrees. Check with the temperature constant

Check the raining constant and tell the user if they need an umbrella or not

Check the time constant and if it is morning tell the user to go to school, if it is afternoon tell the user to go home, and if it is night tell the user to go to bed*/
if temperature > 80 {
    print("Wear shorts")
} else {
    print("Wear pants")
}
if raining == true {
    
    print("It's pouring, you need to get an umbrella!")
} else {
    print("your all good no need for an umbrella today.")
}

if time == "Morning"{
    print("Go to school!!")
} else if time == "Afternoon" {
    print("It's the end of the day time to go home")
} else if time == "Night" {
    print("What are you still doing up? Go to bed!!")
}

/* switch time {
    case "Morning":
        print("Go to school")
    case "Afternoon":
        print("Time to head home")
    case "Evening":
        print("Head to bed")
    default:
        print("No idea")
 }
*/
/*:
- Loops

Using a for loop print the numbers from 1 to 10 on screen

Using  a while loop print the numbers from 10 to 1 on screen*/
for numbs in 1...10{ //counter
    print(numbs)
}

var start = 10
while (start > 0){
    print(start)
    start -= 1
}
/*:
- Collections

Create an array that holds five strings

Create a tuple that holds two strings

Using a loop, step through one of the collections you created and print all of the items to the screen*/
var colorsArray:[String] = ["red", "orange", "yellow", "green", "blue"]
var colorsTuple = ("indigo" , "violet")

for color in colorsArray{
    print(color)
}
/*:
- Functions

Create a function that takes two doubles, multiplies them, and returns the result.

Call the function, save the result in the variable "answer". Pass it two of the constants you  creataed (a, b, c, d, e, or f)*/
func multiply2numbs(numb1:Double , numb2:Double) -> Double{
    return numb1 * numb2
}
var answer = multiply2numbs(numb1: e, numb2: f)
/*:
- Closures

Create a closure that subtracts one number from another and prints the results, use the closure. You may pass it constants or numbers*/
    var subtractClosure = {
        (numb1: Int , numb2: Int) in
        print(numb1 - numb2)
    }
//print(subtractClosure(a,b))
subtractClosure(c,a)
subtractClosure(9,4)
/*:
- Enums
 
Create an enum that holds the first name of everyone in your group

Create a switch statement based on the enum that will display the birthday of the
selected person

Test it by using your own name*/
enum groupNames:String {
    case name = "Nilah"
    case name2 = "Fernando"
    case name3 = "Raymond"
    case name4 = "Yasmin"
    case name5 = "Dante"
}

var myName = groupNames.name
switch myName {
    case.name:
        print("September 22nd, 2002")
    case.name2:
        print("March 14th, 2003")
    case.name3:
        print("April 4th, 2003")
    case.name4:
        print("June 9th, 2003")
    case.name5:
        print("February 22nd, 2003")
    default:
        print("Happy Birthday!")
}

/*
switch myName {
    case.name, .name2:
        print("Happy Birthday, \(groupNames.name.rawValue)!")
    default:
        print("Happy Birthday!")
 }
 */
/*:
- Structure
 
Create a structure called Name that holds a first, middle, and last name and prints them on screen in one line with spaces between them

Create an instance of the Name structure, pass it your name, and use the instance you created to print your  name to the screen*/
struct Name {
    var firstName: String
    var middleName: String
    var lastName: String
    
    
    init(strFirst:String , strMiddle:String , strLast:String){
        self.firstName = strFirst
        self.middleName = strMiddle
        self.lastName = strLast
    }
    
}


var myFullName =  Name(strFirst: "Nilah", strMiddle: "Imani", strLast: "Marshall")
print("Hey, my name is \(myFullName.firstName) \(myFullName.middleName) \(myFullName.lastName).")

/*:
- Class
 
Create a class called Coffee that accepts size, caffineated,  cream,  and sugar then prints the order on screen

Create an instance of the class

Use the instance of the class and call the function*/
class Coffee {
    var theCupSize: cupSize
    var isCaffeinated: Bool
    var hasCream: Bool
    var hasSugar: Bool
    
    enum cupSize: String, CaseIterable{
        case small = "S"
        case medium = "M"
        case large = "L"
        case extralarge = "XL"
    }
        init(incSize: cupSize , isCaffeinated:Bool , hasCream:Bool , hasSugar:Bool){
            self.theCupSize = incSize
            self.isCaffeinated = isCaffeinated
            self.hasCream = hasCream
            self.hasSugar = hasSugar
        }
    
    func printAll(){
        print("My cup of coffee is \(theCupSize.rawValue)")
        if isCaffeinated{
            print("it is caffeinated")
        } else {
            print("it is not caffeinated")
        }
        
        if hasCream{
            print("it has cream")
        } else {
            print("it does not have cream in it")
        }
        
        if hasSugar{
            print("it has sugar")
        } else {
            print("it does not have sugar")
        
        }
        
    }
    
}

var myCoffee = Coffee(incSize: .medium, isCaffeinated: false, hasCream: true, hasSugar: true)

myCoffee.printAll()


