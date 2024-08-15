import 'package:flutter/material.dart';
import 'business_category.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:digi_khata/widgets/cards_widget.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessType extends StatefulWidget {
  @override
  BusinessTypeState createState() => BusinessTypeState();
}

class BusinessTypeState extends State<BusinessType> {
  int? _selectedButtonIndex;
  bool _isOthersSelected = false;

  final List<String> cardTitles = List<String>.filled(12, " ");

  final List<String> buttonImages = [
    'assets/dg18.png',
    'assets/dg19.png',
    'assets/dg20.png',
    'assets/dg21.png',
    'assets/dg22.png',
    'assets/dg23.png',
  ];

  final List<String> buttonTexts = [
    'Retailer/shop',
    'Wholesaler',
    'Distributor',
    'Manufacturer',
    'Services',
    'Others',
  ];
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessCategory()),
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
      _isOthersSelected = index == 5;
    });
  }

  void _onAllPressed() {
    setState(() {
      _isOthersSelected = false;
      _selectedButtonIndex = null;
    });
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
                  SizedBox(height: 2),
                  Text(
                    'What is your Business Type?',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    child: GridView.count(
                      shrinkWrap: true,
                      childAspectRatio: 3,
                      crossAxisCount: 2,
                      crossAxisSpacing: 11,
                      mainAxisSpacing: 8.0,
                      children: _isOthersSelected
                          ? [
                              ElevatedButton(
                                onPressed: () {
                                  _onAllPressed();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  padding: EdgeInsets.all(14),
                                  elevation: 1,
                                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      buttonImages[4],
                                      width: 29,
                                      height: 200,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'All',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  padding: EdgeInsets.all(14),
                                  elevation: 2,
                                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 245, 58, 1),
                                      width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      buttonImages[5],
                                      width: 29,
                                      height: 100,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Others',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          : List.generate(buttonTexts.length, (index) {
                              return ElevatedButton(
                                onPressed: () {
                                  _onButtonPressed(index);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  padding: EdgeInsets.all(14),
                                  elevation: 2,
                                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                                  side: BorderSide(
                                      color: _selectedButtonIndex == index
                                          ? Color.fromARGB(255, 245, 58, 1)
                                          : Color.fromARGB(255, 255, 255, 255),
                                      width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      buttonImages[index],
                                      width: 29,
                                      height: 100,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      buttonTexts[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0)),
                                    ),
                                  ],
                                ),
                              );
                            }),
                    ),
                  ),
                  SizedBox(height: 0),
                  if (_isOthersSelected) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 3),
                      child: TextField(
                        cursorColor: Colors.deepOrange,
                        decoration: InputDecoration(
                          labelText: 'Enter business type',
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 255, 51, 0),
                              fontSize: 13),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepOrange, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
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
