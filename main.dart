import 'package:flashcard_app/flashcard.dart';
import 'package:flashcard_app/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return(MainApp1());
  }
}
class MainApp1 extends State<MainApp>{
    final List <Flashcard> _flashcards =[
     Flashcard(
      question:"Which language we use in flutter?", 
      answer:"Dart"),
      Flashcard(question: "What is a widget in Flutter?", answer: "The basic building block of the UI in Flutter"),
      Flashcard(question:"What is the main use of Flutter?",answer:"To develop cross platform applications from a single codebase for the web, Fuchsia, Android, iOS, Linux, macOS, and Windows.")
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width:250,
                child:FlipCard(
                  front:FlashcardView(
                   text:_flashcards[_currentIndex].question,
                  ),
                  back: FlashcardView(
                    text: _flashcards[_currentIndex].answer,
                    )

                )

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   OutlinedButton.icon(
                    onPressed:showPrevcard,
                    icon:(Icon(Icons.chevron_left)) ,
                    label:Text("Previous")),
                   OutlinedButton.icon(
                    onPressed:showNextcard,
                    icon:(Icon(Icons.chevron_right)) ,
                    label:Text("Next"))
              ],)
            ],
          )
        )
      ));
  }
  void showNextcard()
  {
    setState(() {
     _currentIndex=(_currentIndex+1 < _flashcards.length)? _currentIndex+1:0;
    });

  }
  void showPrevcard(){
    setState(() {
      _currentIndex=(_currentIndex -1 >= 0)?_currentIndex-1 : _flashcards.length-1;
    });
     
  }
}