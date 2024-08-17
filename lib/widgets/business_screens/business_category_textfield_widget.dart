import 'package:flutter/material.dart';

class BusinessCategoryTextFieldWidget extends StatelessWidget {
  const BusinessCategoryTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
      child: TextField(
        cursorColor: const Color.fromARGB(255, 255, 81, 0),
        decoration: const InputDecoration(
          labelText: 'Enter business category',
          labelStyle:
              TextStyle(color: Color.fromARGB(255, 255, 51, 0), fontSize: 13),
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
