import 'package:flutter/material.dart';

class DigiKhataHeader extends StatelessWidget {
  const DigiKhataHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/dg1.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 8),
        const Text(
          "DigiKhata",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
