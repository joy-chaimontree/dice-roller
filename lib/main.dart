import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DiceApp());

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gradientContainer(),
    );
  }

  Scaffold gradientContainer() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        title: const Text(
          'Random Dice',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent,
              Colors.brown,
            ],
            stops: [0.1, 0.6],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const DiceRoller(),
      ),
    );
  }
}
