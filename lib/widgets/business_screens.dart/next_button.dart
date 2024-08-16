import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;

  const NextButton(
      {required this.onPressed, required this.buttonColor, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      height: 50,
      width: 350,
      text: 'NEXT',
      isReverse: false,
      selectedTextColor: const Color.fromARGB(255, 255, 255, 255),
      selectedBackgroundColor: buttonColor,
      transitionType: TransitionType.LEFT_TO_RIGHT,
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: buttonColor,
      borderColor: Colors.white,
      borderRadius: 50,
      borderWidth: 2,
      onPress: onPressed,
    );
  }
}
