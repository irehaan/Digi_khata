import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 30,
            width: 50,
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 126, 126, 126),
            ),
          ),
        ],
      ),
    );
  }
}
