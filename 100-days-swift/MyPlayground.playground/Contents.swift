import UIKit
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////Day 1
//
//var str = "Hello, playground"
//
//str = "Hi!"
//
//var age = 38
//
//var population = 8_000_000
//
//var str1 = """
//This goes \
//over multiple \
//lines
//"""
//
//var pi = 3.141592654
//
//var awesome = true
//
//var score = 85
//var str3 = "Your score was \(score)"
//
//var test = "Your test result is here: \(str3)"
//
//let cesar = "Almeida"
//
//let album: String = "Reputation"
//let year: Int = 1993
//let height: Double = 1.80
//let ironMaidenRocks: Bool = true
//
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////Day 2
//let john = "John Lennon"
//let paul = "Paul McCartney"
//let george = "George Harrison"
//let ringo = "Ringo Star"
//let cezao = "cezao pow pow pow"
//var beatles: [String] = [john, paul, george, ringo]
//beatles[0]
//beatles.append(cezao)
//beatles
//
//let colors = Set(["red", "green", "blue"])
//var colors2 = Set(["red", "green", "blue", "red", "blue"])
//colors2.insert("yellow")
//colors2
//
//
//var names = (first: "César", last: "Almeida")
//
//names.first = "Pedro"
//
//var heights = [String: Any]()
//heights = [
//    "César Almeida": 1.80,
//    "Pedro Predo": true
//]
//
//heights["Pedro Predo"]
//
//let favoriteIceCream = [
//    "Paul": "Chocolate",
//    "Sophie": "Vanilla"
//]
//
//favoriteIceCream["Charlotte", default: "Unknown"]
//
//var teams = [String: String]()
//teams["Paul"] = "Red"
//
//var results = [Int]()
//results.append(0)
//
//var words = Set<String>()
//var numbers = Set<Int>()
//
//var scores = Dictionary<String, Int>()
//var resultsis = Array<Int>()
//
//var testeArray = [String]()
//testeArray.append("Teste")
//
//var testeDic = [String: Int]()
//
//testeDic["Cesar"] = 27
//
//var testeSet = Set<String>()
//testeSet.insert("Teste")
//testeSet.insert("Test2")
//testeSet.insert("Test3")
//testeSet.insert("Test4")
//testeSet
//
//enum Results {
//    case sucess
//    case failure
//}
//
//let results2 = Results.sucess
//
//
//enum Activity {
//    case bored
//    case running(destination: String)
//    case talking(topic: String)
//    case singing(volume: Int)
//}
//
//let talking = Activity.talking(topic: "programming")
//
//enum Planet: Int {
//    case mercury = 1
//    case venus
//    case earth
//    case mars
//}
//
//
//let earth = Planet(rawValue: 3)
//
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////Day3
//let firstScore = 12
//let secondScore = 4
//let total = firstScore + secondScore
//let difference = firstScore - secondScore
//let product = firstScore * secondScore
//let divides = firstScore / secondScore
//let remainder = 13 % secondScore
//
//let meaningOfLife = 42
//let doubleManing = 42 + 42
//let fakers = "Fakers gonna "
//let action = fakers + "fake"
//let firstHalf = ["John", "Paul"]
//let secondHalf = ["George", "Ringo"]
//let beauteles = firstHalf + secondHalf
//
//var scor = 95
//scor -= 5
//var quote = "The rain in Spain falls mainly on the "
//quote += "Spaniards"
//
//firstScore == secondScore
//firstScore != secondScore
//firstScore < secondScore
//firstScore >= secondScore
//"Taylor" <= "Swift"
//
//score = 9001
//if score > 9000 {
//    print("It's over 9000!")
//} else if score == 9000 {
//    print("It's exactly 9000!")
//} else {
//    print("It's not over 9000!")
//}
//
//let age1 = 12
//let age2 = 21
//if age1 > 18 && age2 > 18 {
//    print("both are over 18")
//}
//if age1 > 18 || age2 > 18 {
//    print("At least one is over 18")
//}
//
//let firstCard = 11
//let secondCard = 10
//print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
//
//let weather = "sunny"
//switch weather {
//case "rain":
//    print("Bring an Umbrella")
//case "snow":
//    print("Wrap up warm")
//case "sunny":
//    print("Wear sunscreen")
//    fallthrough
//default:
//    print("enjoy your day")
//}
//
//score = 85
//switch score {
//case 0..<50:
//    print("You failed badly")
//case 50...85:
//    print("You did OK")
//default:
//    print("You did great")
//}
//let nameses = ["Piper", "Alex", "Suzanne", "Gloria"]
//print(nameses[0])
//print(nameses[1...3])
//print(nameses[0...])
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Day 4
let count = 1...10
for number in count {
    print("The number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
for _ in 1...5 {
    print("pow")
}


var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not here I come!")


var numb = 1
repeat {
    print(numb)
    numb += 1
} while numb <= 20
print("Ready or not, here I come!")
while false {
    print("this is false")
}
repeat {
    print("this is false")
} while false


var countDown = 10
while countDown >= 0 {
    print(countDown)
    if(countDown == 4) {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}
print("blastOff")


for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}


var counter = 0
while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Day 5
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}
printHelp()
func doNothing() { }
doNothing()

func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}
greet(name: "Cezao")
func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}
let user = getUser()
print(user.last)

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Pey")

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it`s \(person) again")
    }
}
greet("Cezao")
greet("Cezao", nicely: false)

func square(_ numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(1, 2, 3, 4, 5, 6, 7)

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can`t use that password")
}
