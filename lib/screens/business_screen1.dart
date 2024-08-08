import 'package:flutter/material.dart';
import 'business_screen2.dart';
import 'package:digi_khata/widgets/cards_widget.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class BusinessScreen1 extends StatefulWidget {
  @override
  BusinessScreen1State createState() => BusinessScreen1State();
}

class BusinessScreen1State extends State<BusinessScreen1> {
  // ignore: unused_field
  double _buttonWidth = 200;
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  final List<String> cardTitles = List<String>.filled(12, " ");
  final List<String> imagePaths = [
    'assets/dg6.jpeg',
    'assets/dg7.jpeg',
    'assets/dg8.jpeg',
    'assets/dg9.jpeg',
    'assets/dg10.jpeg',
    'assets/dg11.jpeg',
    'assets/dg12.jpeg',
    'assets/dg13.jpeg',
    'assets/dg14.jpeg',
    'assets/dg15.jpeg',
    'assets/dg16.jpeg',
    'assets/dg17.jpeg',
  ];

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessScreen2()),
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
              padding: EdgeInsets.all(5),
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
                    'Owner Name',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 255, 72, 0),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          color: const Color.fromARGB(255, 255, 72, 0),
                          size: 40,
                        ),
                        hintText: 'Enter owner name',
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
                    _buttonColor = Color.fromARGB(
                        255, 255, 72, 0); // Change color on click
                    _buttonWidth = 300; // Width after button click
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
