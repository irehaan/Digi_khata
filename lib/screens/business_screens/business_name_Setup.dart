import 'package:flutter/material.dart';
import 'business_type.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:digi_khata/widgets/cards_widget.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessNameSetup extends StatefulWidget {
  @override
  BusinessNameState createState() => BusinessNameState();
}

class BusinessNameState extends State<BusinessNameSetup> {
  // ignore: unused_field
  double _buttonWidth = 200;
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  final List<String> cardTitles = List<String>.filled(12, " ");

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessType()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 218, 98, 1),
                      Color.fromARGB(255, 255, 38, 0),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Set up DigiKhata',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 92,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    child: CustomCardWidget(
                      cardTitles: cardTitles,
                      imagePaths: imagePaths,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Business Name',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 255, 72, 0),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.storefront_outlined,
                          color: const Color.fromARGB(255, 255, 72, 0),
                          size: 30,
                        ),
                        hintText: 'Enter your business name',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 179, 179, 179),
                            fontWeight: FontWeight.normal),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 238, 238, 238),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 238, 238, 238),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Center(
              child: AnimatedButton(
                height: 50,
                width: 350,
                text: 'NEXT',
                isReverse: false,
                selectedTextColor: const Color.fromARGB(255, 255, 255, 255),
                selectedBackgroundColor: _buttonColor,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: _buttonColor,
                borderColor: Colors.white,
                borderRadius: 50,
                borderWidth: 2,
                onPress: () {
                  setState(() {
                    _buttonColor = Color.fromARGB(255, 255, 72, 0);
                    _buttonWidth = 300;
                  });
                  Future.delayed(Duration(milliseconds: 0), () {
                    _onNextPressed();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
