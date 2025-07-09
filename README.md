# CodeAlpha
Flashcard App – Built with Flutter:
This project is a simple and interactive Flashcard App developed using Flutter. The application helps users learn and revise information through a set of customizable flashcards. Each flashcard displays a question, and when flipped, reveals the answer. Users can navigate through the flashcards using intuitive previous and next buttons.

Features:
1.Smooth card-flipping animations powered by the flip_card package
2.User-friendly interface for easy interaction
3.Predefined list of flashcards to demonstrate functionality
4.Clear separation of logic, UI components, and data model

Technologies Used:
1.Flutter: For building a cross-platform mobile UI
2.Dart: Programming language used in Flutter
3.flip_card: Flutter package used for card flipping animations

Project Structure:
1.main.dart: Contains the main app logic, including UI setup and state management for navigating between flashcards
2.flashcard.dart: Defines the Flashcard model class, which includes a question and an answer
3.flashcard_view.dart: Stateless widget used to display the content of the flashcard
4.listview.dart: A demo file showing the use of ListView builder in Flutter (not directly integrated with the flashcard flow)
5.pubspec.yaml: Configuration file listing dependencies and other project metadata

How It Works:
The application initializes a predefined list of flashcards. Each card can be flipped to view the answer using the flip card animation. Navigation buttons are provided to cycle through the flashcards. The app maintains the current index to determine which flashcard to display.

Dependencies:
The app relies on the flip_card package for implementing the flip animation. All necessary dependencies are listed in the pubspec.yaml file and can be fetched using Flutter’s package manager.
