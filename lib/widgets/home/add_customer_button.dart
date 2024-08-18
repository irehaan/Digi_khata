import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AddCustomerButton extends StatelessWidget {
  const AddCustomerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 75,
      right: 20,
      child: Row(
        children: [
          const Icon(
            Icons.arrow_right_alt_rounded,
            color: Color.fromARGB(255, 255, 60, 0),
            size: 53,
          )
              .animate(
                onPlay: (controller) => controller.loop(),
              )
              .moveX(
                begin: 0,
                end: 20,
                duration: 500.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .moveX(
                begin: 20,
                end: 0,
                duration: 500.ms,
                curve: Curves.easeInOut,
              ),
          const SizedBox(width: 50),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 54, 19),
                  Color.fromARGB(255, 218, 98, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.person_add_alt_1_outlined,
                  color: Colors.white),
              label: const Text(
                "ADD CUSTOMER",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
