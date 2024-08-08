import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final double height;
  LanguageButton(this.text, {this.height = 48.0}); // Default height set to 48.0
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 120, // Set a fixed width for uniformity
      child: TextButton(
        onPressed: () {
          // Handle language selection
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Color.fromARGB(255, 255, 255, 255)
                  .withOpacity(0.8), // Very light border color
              width: 1, // Thin border width
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;
  StartButton({required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 221, 33, 0),
            Color.fromARGB(255, 236, 106, 0)
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 12),
        ),
        child: Text(
          'START',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
