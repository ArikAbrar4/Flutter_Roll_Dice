import 'dart:math';

import 'package:flutter/material.dart';

class DiaceRoller extends StatefulWidget {
  const DiaceRoller({super.key});
  @override
  State<DiaceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiaceRoller> {
  final randomizer = Random();
  var currentDiceRoll =
      2; // currentDiceRoll ei variable niche setState() a jai change hoche. But initially eitar value
  // 2 set kore raksi. Initially ekta value set korte hbe.

  void rollDice() {
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; // currentDiceRoll is changing here.
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // eita daoa hoise jate column tar main axis vertical a minimum jaiga khai
      children: [
        Image.asset(
          'assets/image/dice-$currentDiceRoll.png', // USe of String Interpolation
          width: 200,
        ),

        //Alternative option to Add padding through SizedBox Widget
        // const SizedBox(height: 20,),

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ), // EdgeInset padding korar jonno importan ekta class
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
