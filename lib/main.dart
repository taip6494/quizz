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
    Question('Le piton des neiges est un volcan de la Réunion ?', true),
    Question('Flutter permet de faire des applications web également ?', false),
    Question('Php est le language utilisé par Flutter ?', true),
    Question('Qu est ce que Etienne est un bon formateur ?', true),
    Question('Est ce que flutter est un bon langage de programmation?', true),
  ];

  void ajoutItems(item) {
    setState(() {
      listeIcone.add(item);
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
                  questionsListe[count].question,
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
                        _Verificationdesquestion(true);
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
                      _Verificationdesquestion(false);
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

  _Verificationdesquestion(selectionreponse) {
    if (selectionreponse == questionsListe[count].reponseCorrect) {
      //Correct answer

      setState(() {
        listeIcone.add(check);

        // Check if don't cross list size limit which will result in error
        if (count < questionsListe.length - 1) count++;
      });
    } else {
      //Incorrect answer
      setState(() {
        listeIcone.add(close);

        // Check if don't cross list size limit which will result in error
        if (count < questionsListe.length - 1) count++;
      });
    }
  }
}



