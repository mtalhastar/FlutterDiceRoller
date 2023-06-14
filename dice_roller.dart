import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    // TODO: implement createState
    return _RollDice();
  }
}

class _RollDice extends State<RollDice> {
  var imagelink = 'assets/images/dice-1.png';
  var number = 1;

  void rollTheDice() {
    number = Random().nextInt(6) + 1;
    setState(() {
      imagelink = 'assets/images/dice-${number}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagelink,
          width: 200,
        ),
        ElevatedButton(
          onPressed: rollTheDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
            foregroundColor: Color.fromARGB(255, 250, 250, 250),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(
                color: Color.fromARGB(255, 23, 23, 23),
                width: 1.0,
              ),
            ),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(fontFamily: 'Raleway', fontSize: 16),
          ),
        )
      ],
    );
  }
}
