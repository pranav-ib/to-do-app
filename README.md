# To-Do App

A minimalistic To-Do App built with **Flutter** to help you manage tasks efficiently.

## Features

- **Add Tasks**: Create tasks with a title and description.
- **Mark as Complete**: Toggle tasks between completed and incomplete using a check button.
- **Delete Tasks**: Remove tasks you no longer need.
- **Task Details**: Tap on a task to view its full description and manage it.

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- A code editor (e.g., Visual Studio Code, Android Studio).

### Installation

1. **Clone the repository**:
   ```
   git clone https://github.com/pranav-ib/to-do-app.git
   cd to-do-app

2. **Install dependencies**:
    ```
    flutter pub get
    
3. **Run the app**:
    ```
    flutter run

4.**How to Use**

  - Add a Task:
    Click the "Add Task" button at the bottom of the home screen.
    Enter the task name and description.
    Click "Create Task" to save it.

  - Mark a Task as Complete:
    Tap the check button on the task card to toggle its completion status.
    
  - Delete a Task:
    Delete button left on a task card.
    
  - View Task Details:
    Tap on a task card to see its full description and options to delete or mark it as complete.
    
###Code Structure
    
    lib/
    |-- models/
    |   |-- Task.dart          # Task data model
    |-- controller/
    |   |-- TaskController.dart # Manages task operations
    |-- screens/
    |   |-- home.dart          # Home screen with task list
    |   |-- addTaskScreen.dart # Screen for adding new tasks
    |-- main.dart              # Entry point of the app
    
###Dependencies
  GetX: For state management and navigation.
  Google Fonts: For custom typography.
 
