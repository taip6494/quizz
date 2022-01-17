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

class body extends State<_body> {
  final check = Icon(Icons.check, color: Colors.green);
  final close = Icon(Icons.clear, color: Colors.red);
  int count = 0;
  List<Icon> listeIcone = [];

  void ajoutItems(item){
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

