import 'package:flutter/material.dart';

class BusinessTypeTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const BusinessTypeTextFieldWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
      child: TextField(
        controller: controller,
        cursorColor: Colors.deepOrange,
        decoration: InputDecoration(
          labelText: 'Enter business type',
          labelStyle: TextStyle(
              color: const Color.fromARGB(255, 255, 51, 0), fontSize: 13),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
          ),
        ),
      ),
    );
  }
}
