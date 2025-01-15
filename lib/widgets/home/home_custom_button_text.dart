import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: onPressed,
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
