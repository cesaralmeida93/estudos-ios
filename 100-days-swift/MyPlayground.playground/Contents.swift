//Day 1
import UIKit

var str = "Hello, playground"

str = "Hi!"

var age = 38

var population = 8_000_000

var str1 = """
This goes \
over multiple \
lines
"""

var pi = 3.141592654

var awesome = true

var score = 85
var str3 = "Your score was \(score)"

var test = "Your test result is here: \(str3)"

let cesar = "Almeida"

let album: String = "Reputation"
let year: Int = 1993
let height: Double = 1.80
let ironMaidenRocks: Bool = true


//Day 2
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Star"
let cezao = "cezao pow pow pow"
var beatles: [String] = [john, paul, george, ringo]
beatles[0]
beatles.append(cezao)
beatles
    
let colors = Set(["red", "green", "blue"])
var colors2 = Set(["red", "green", "blue", "red", "blue"])
colors2.insert("yellow")
colors2


var names = (first: "César", last: "Almeida")

names.first = "Pedro"

var heights = [String: Any]()
heights = [
    "César Almeida": 1.80,
    "Pedro Predo": true
]

heights["Pedro Predo"]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Charlotte", default: "Unknown"]

var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()
results.append(0)

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var resultsis = Array<Int>()

var testeArray = [String]()
testeArray.append("Teste")

var testeDic = [String: Int]()

testeDic["Cesar"] = 27

var testeSet = Set<String>()
testeSet.insert("Teste")
testeSet.insert("Test2")
testeSet.insert("Test3")
testeSet.insert("Test4")
testeSet

enum Results {
    case sucess
    case failure
}

let results2 = Results.sucess


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "programming")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)
