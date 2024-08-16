import 'package:flutter/material.dart';

class CardCompletionInfo extends StatelessWidget {
  const CardCompletionInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              'assets/dg36.gif',
              height: 120,
              width: 120,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Congratulations',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 60, 0),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Business Card is ready to share',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
