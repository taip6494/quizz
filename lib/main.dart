import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: _body(),
        ),
      ),
    ),
  );
}

class _body extends StatefulWidget {
  @override
  State<_body> createState() => body();
}
class Question {
  String question;
  bool reponseCorrect;
  Question(this.question, this.reponseCorrect);
}

class body extends State<_body> {
  final check = Icon(Icons.check, color: Colors.green);
  final close = Icon(Icons.clear, color: Colors.red);
  int count = 0;
  List<Icon> listeIcone = [];

  final List<Question> questionsListe = [
    Question('Test 1 ',false),
    Question('Test 2 ', true),
    Question('Test 3', true),
    Question('Test 4', true),
    Question('Test 5', true),
    Question('Test 6', true),
    Question('Test 7', false),
    Question('Test 9', true),
    Question('Test 10', false),
    Question('Test 11', true),
    Question('Test 12', true),
    Question('Test 13', true),
    Question('Test 14', true),
  ];

  void ajoutItems(item){
    setState(() {
      listeIcone.add(item);
      questionsList.add
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Ceci est une question',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: (
                  ElevatedButton(
                      child: Text(
                        'Vrai',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // background (button) color
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        ajoutItems(check);
                      }

                  )
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: (
                  ElevatedButton(
                    child: Text(
                      'faux',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background (button) color
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      ajoutItems(close);
                    },
                  )
              ),
            ),
          ),
          Row(
            children:
            listeIcone,
          )
        ]
    );
  }
  }



