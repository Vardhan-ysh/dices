//you normarrly split your codes into different files
import 'package:first_app/dice_roller.dart';
import "package:flutter/material.dart"; //you have to import flutter in every field
// import "package:first_app/styled_text.dart";

//to initialize and not assign use: <type>? <name> = <value>
//var and const and final are normal types
//const is compile time constant while final isnt
Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colours});
  //required is needed for named arguements as passing unnamed arguements are not necessary
  //also can be   GradientContainer({key}): super(key: key); we use shortcut

  const GradientContainer.purple({super.key})
      : colours = const [
          Color.fromRGBO(103, 58, 183, 1),
          Color.fromRGBO(63, 81, 181, 1),
        ];
  //you can have many constructors in one class that behave differently

  final List<Color> colours;
  //we can use two different colours as I did before

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colours,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
