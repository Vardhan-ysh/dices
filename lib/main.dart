import "package:flutter/material.dart"; //both '' and "" can be used
import "package:first_app/gradient_container.dart"; //you have to import different files being used in main.dart including custom files

void main() {
  runApp(
    //runApp has named arguments
    const MaterialApp(
      //material app has named arguments
      home: Scaffold(
        body: GradientContainer(
          colours: [
            Color.fromARGB(255, 249, 255, 71),
            Color.fromARGB(255, 159, 255, 85),
          ],
        ),
      ),
    ),
  );
}
