import 'dart:math';
import 'package:flutter/material.dart';

//a global final data
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage1 = 1;
  var activeDiceImage2 = 6;

  void rollDice() {
    setState(() {
      //everytime click roll dice a new random is created and store in memory
      //the old random that was created will be thrown away//
      activeDiceImage1 = randomizer.nextInt(6) + 1; // 1-6
      activeDiceImage2 = randomizer.nextInt(6) + 1; // 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-$activeDiceImage1.png',
              width: 150,
            ),
            Image.asset(
              'assets/dice-$activeDiceImage2.png',
              width: 150,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll Dice!'),
        ),
      ],
    );
  }
}
