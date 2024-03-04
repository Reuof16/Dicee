import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Dice'),
          centerTitle: true,
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void ChangeDiceNumber(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber= Random().nextInt(6)+1;
      print('dicenumber= $leftDiceNumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed:(){
                  ChangeDiceNumber();
                },
                child: Center(child: Image.asset('images/dice$leftDiceNumber.png'))),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                ChangeDiceNumber();
              },
              child: Center(child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}

