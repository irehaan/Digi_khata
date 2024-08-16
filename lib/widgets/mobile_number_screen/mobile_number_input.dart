import 'package:flutter/material.dart';

class MobileNumberInput extends StatelessWidget {
  final TextEditingController controller;

  const MobileNumberInput({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          width: 80,
          height: 47.5,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/dg5.png',
                width: 20,
                height: 47.5,
              ),
              const SizedBox(width: 8),
              const Text(
                '+92',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            cursorColor: const Color.fromARGB(255, 255, 81, 0),
            controller: controller,
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Colors.grey.shade500),
            decoration: InputDecoration(
              hintText: 'Mobile Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
      ],
    );
  }
}
