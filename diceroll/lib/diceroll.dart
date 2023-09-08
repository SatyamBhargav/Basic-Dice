import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoll> {
  final randomnum = Random();
  var changedice = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$changedice.png',
          width: 200,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                changedice = randomnum.nextInt(6) + 1;
              });
            },
            child: const Text(
              'Press!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ))
      ],
    );
  }
}
