# 🐾 GuessGame  

**GuessGame** is a simple and interactive iOS game built using **SwiftUI**. Players must guess the correct animal from three options. The game provides instant feedback, updates the score, and randomizes the correct answer for a fun experience.  

## 📌 Features  

- 🎮 **User-Friendly UI**: Minimalistic and intuitive interface with SwiftUI.  
- 🐶 **Animal Guessing Game**: Players choose between Dog, Cat, and Fox.  
- ✅ **Instant Feedback**: Displays “Correct! 🎉” or “Wrong! 😕” based on the answer.  
- 🔄 **Randomized Answers**: The correct answer is randomized after each attempt.  
- 📊 **Score Tracking**: Score increases for correct answers and decreases for wrong answers.  

## 🛠 Technologies Used  

| Technology | Purpose |
|------------|---------|
| **Swift** | Primary programming language for iOS development |
| **SwiftUI** | Used to create the UI components efficiently |
| **State Management** | `@State` variables handle game logic dynamically |
| **Randomization** | `Int.random(in: 0..<3)` selects a random correct answer |
| **Conditional UI Updates** | The UI updates automatically based on user interactions |

## 🏗 Project Structure  

### `ContentView.swift`  

- **Game Title & Instructions**  
  - Uses `Text("Welcome to Guess Game!")` for the title.  
  - Displays `gameTitle` (updates when a guess is made).  
  - Shows `gameSubtitle` (reveals the correct answer).  

- **Score Display**  
  - `@State var score = 0` manages the score dynamically.  
  - The `Text("Score \(score)")` updates when an answer is chosen.  

- **Answer Buttons**  
  - Uses `Button(action:)` to trigger `checkAnswer(answer:)`.  
  - `HStack` contains the animal emoji and name.  
  - The `background(Color.blue).clipShape(RoundedRectangle(cornerRadius: 20))` styles the button.  

- **Answer Checking (`checkAnswer(answer:)`)**  
  - Compares the user’s choice with `correctAnswer`.  
  - Updates `gameTitle` and `gameSubtitle` based on correctness.  
  - Calls `randomCorrectAnswer()` to generate a new correct answer.  

- **Random Answer Generation (`randomCorrectAnswer()`)**  
  - Uses `Int.random(in: 0..<3)` to assign a new correct answer.  

## 📲 Installation & Setup  

1. Clone the repository:  
   ```sh
   git clone https://github.com/your-username/GuessGame.git
