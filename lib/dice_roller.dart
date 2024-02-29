import "package:flutter/material.dart";
import "dart:math";

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String currDiceImage = "assets/images/dice-images/dice-1.png";

  void rollDice() {
    var diceNumber = randomizer.nextInt(6) + 1;
    setState(
      () {
        currDiceImage = "assets/images/dice-images/dice-$diceNumber.png";
      },
    );
    print("***working***");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 60,
        ),
        TextButton(
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 100,
            // ),
            foregroundColor: const Color.fromRGBO(255, 132, 0, 1),
          ),
          onPressed: rollDice,
          child: const Text(
            "Roll The Dice",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        )
      ],
    );
  }
}
