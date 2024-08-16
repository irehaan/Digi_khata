import 'package:digi_khata/screens/business_screens/business_address.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/cards_widget.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessCategory extends StatefulWidget {
  @override
  BusinessCategoryState createState() => BusinessCategoryState();
}

class BusinessCategoryState extends State<BusinessCategory> {
  // ignore: unused_field
  double _buttonWidth = 200;
  int? _selectedButtonIndex;
  bool _isOthersSelected = false;

  final List<String> cardTitles = List<String>.filled(12, " ");

  final List<String> buttonTexts = [
    'Kirana/Grocery',
    'Textile/Fashion',
    'Medical',
    'Electronics',
    'Mobile',
    'Automobile',
    'Sports',
    'Kids/Toys',
    'Hardware/Tools',
    'Others',
  ];

  final List<String> buttonImages = [
    'assets/dg24.png',
    'assets/dg25.png',
    'assets/dg26.png',
    'assets/dg27.png',
    'assets/dg28.png',
    'assets/dg29.png',
    'assets/dg30.png',
    'assets/dg31.png',
    'assets/dg32.png',
    'assets/dg33.png',
  ];

  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessAddress()),
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
      _isOthersSelected = index == 9;
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 189, 28, 0),
          elevation: 0,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                  Text(
                    'What is your Business Category?',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                                  elevation: 2,
                                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/dg22.png',
                                      width: 29,
                                      height: 300,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'All Categories',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.normal),
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
                                  elevation: 1,
                                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                                  side: BorderSide(
                                    color: Color.fromARGB(255, 245, 58, 1),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      buttonImages[9],
                                      width: 29,
                                      height: 100,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Others',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.normal),
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
                                  padding: EdgeInsets.all(10),
                                  elevation: 2,
                                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                                  side: BorderSide(
                                    color: _selectedButtonIndex == index
                                        ? Color.fromARGB(255, 255, 60, 0)
                                        : Color.fromARGB(255, 249, 249, 249),
                                  ),
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
                                          fontSize: 13,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              );
                            }),
                    ),
                  ),
                  if (_isOthersSelected) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 3),
                      child: TextField(
                        cursorColor: const Color.fromARGB(255, 255, 81, 0),
                        decoration: const InputDecoration(
                          labelText: 'Enter business category',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 51, 0),
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
