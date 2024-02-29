import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  //StyledText() : text=text is also a way but is long so use this.<name>
  //instance variable is used to make text reusable

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromRGBO(156, 39, 176, 1),
          fontSize: 28.0,
        ),
      ),
    );
  }
}
