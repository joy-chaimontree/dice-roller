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
  var activeDiceImage = 'assets/dice-1.png';

  void rollDice() {
    //to generate random number//
    var diceRoll = randomizer.nextInt(6) +1; // 1-6
    setState(() {
      //everytime click roll dice a new random is created and store in memory
      //the old random that was created will be thrown away//
      activeDiceImage = 'assets/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDiceImage, height: 270),
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
