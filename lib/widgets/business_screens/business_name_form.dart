import 'package:flutter/material.dart';

class BusinessNameForm extends StatelessWidget {
  final TextEditingController controller;

  const BusinessNameForm({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Text(
          'Business Name',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            controller: controller,
            cursorColor: const Color.fromARGB(255, 255, 72, 0),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.storefront_outlined,
                color: Color.fromARGB(255, 255, 72, 0),
                size: 40,
              ),
              hintText: 'Enter your business name',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 179, 179, 179),
                fontWeight: FontWeight.normal,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 238, 238, 238),
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 238, 238, 238),
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
