import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(AnimalSounds());
}

class AnimalSounds extends StatelessWidget {
  void playSound(int animalNumber) {
    final player = AudioCache();
    player.play('animal$animalNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Animals Sounds',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'GloriaHallelujah',
              color: Colors.tealAccent[400],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Expanded(child: buildOne(animalNumber1: 0, animalNumber2: 1)),
              Expanded(child: buildOne(animalNumber1: 2, animalNumber2: 3)),
              Expanded(child: buildOne(animalNumber1: 4, animalNumber2: 5)),
              Expanded(child: buildOne(animalNumber1: 6, animalNumber2: 7)),
              Expanded(child: buildOne(animalNumber1: 8, animalNumber2: 9)),
              Expanded(child: buildOne(animalNumber1: 10, animalNumber2: 11)),
              Expanded(
                child: buildOne(animalNumber1: 12, animalNumber2: 13),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Row buildOne({int animalNumber1 = 0, int animalNumber2 = 0}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: FlatButton(
              onPressed: () {
                playSound(animalNumber1);
              },
              child: Image.asset(
                'images/animal$animalNumber1.png',
              )),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(animalNumber2);
            },
            child: Image.asset('images/animal$animalNumber2.png'),
          ),
        ),
      ],
    );
  }
}
