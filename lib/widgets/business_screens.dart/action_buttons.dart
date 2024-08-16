import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onNextPressed;

  const ActionButtons({Key? key, required this.onNextPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 38, 0),
                Color.fromARGB(255, 218, 98, 1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(45),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset('assets/dg34.png', height: 33, width: 30),
            label: const Text("SHARE", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45),
              ),
              elevation: 0,
            ),
          ),
        ),
        OutlinedButton(
          onPressed: onNextPressed,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color.fromARGB(255, 255, 60, 0)),
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
            backgroundColor: Colors.white,
          ),
          child: const Text("NO THANKS",
              style: TextStyle(color: Color.fromARGB(255, 255, 81, 0))),
        ),
      ],
    );
  }
}
