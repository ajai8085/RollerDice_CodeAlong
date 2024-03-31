import 'dart:math';
import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void onRollDice() {
    setState(() {
      currentDiceRoll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      OutlinedButton.icon(
        onPressed: onRollDice,
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        label: const Text(
          'Roll Dice',
          style: TextStyle(fontSize: 28),
        ),
        icon: const Icon(Icons.flash_on),
      )
    ]);
  }
}
