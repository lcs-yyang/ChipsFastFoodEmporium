
import Foundation

// INPUT

func getMealChoice(withPrompt: String) -> Int {
    
    var choice = 0
    while 1 == 1 {
        
        // Prompt the user
        print(withPrompt, terminator: "")
        
        // Test #1: Get input and make sure it is not nil
        guard let givenInput = readLine() else {
            
            // Prompt again when input is nil
            continue
        }
        
        // Test #2: Need to be a integer
        guard let givenInteger = Int(givenInput) else {
            
            continue
        }
        
        // Test #3: Is it in the correct range?
        if givenInteger < 1 || givenInteger > 4 {
            
            // Prompt again when outisde range
            continue
        }
        
        choice = givenInteger
        break
        
    }
    
    // Exit the function
    return choice
}

// Get all the choices
print("Welcome to Chip's Fast Food Emporium")
let burgerChoice = getMealChoice(withPrompt: "Please enter a burger choice: ")
let sideChoice = getMealChoice(withPrompt: "Please enter a side order choice: ")
let drinkChoice = getMealChoice(withPrompt: "Please enter a drink choice: ")
let dessertChoice = getMealChoice(withPrompt: "Please enter a dessert choice: ")

// PROCESS
//Burger choices
var burgerCalorieCounts : [Int : Int] = [:]
burgerCalorieCounts[1] = 461 // Cheeseburger
burgerCalorieCounts[2] = 431 // Fishburger
burgerCalorieCounts[3] = 420 // Veggieburger
burgerCalorieCounts[4] = 0   // Nothingburger

// Side choices
var sideOrderCalorieCounts : [Int : Int] = [:]
sideOrderCalorieCounts[1] = 100 // Fries
sideOrderCalorieCounts[2] = 57  // Baked potato
sideOrderCalorieCounts[3] = 70  // Chef salad
sideOrderCalorieCounts[4] = 0   // Nothing for side order
// Drink choices
var drinkCaloriesCounts : [Int : Int] = [:]
drinkCaloriesCounts[1] = 130 // Soft drink
drinkCaloriesCounts[2] = 160 // Orange juice
drinkCaloriesCounts[3] = 118 // Milk
drinkCaloriesCounts[4] = 0   // Nothing for drink
// Dessert choices
var dessertCalorieCounts : [Int : Int] = [:]
dessertCalorieCounts[1] = 167   // Apple pie
dessertCalorieCounts[2] = 266   // Sundae
dessertCalorieCounts[3] = 75    // Fruit cup
dessertCalorieCounts[4] = 0     // Nothing for dessert

// Calculate the sum and force unwrap

let totalCalories = burgerCalorieCounts[burgerChoice]! +
    sideOrderCalorieCounts[sideChoice]! +
    drinkCaloriesCounts[drinkChoice]! +
    dessertCalorieCounts[dessertChoice]!

// OUTPUT
print("Your total Calorie count is \(totalCalories).")
