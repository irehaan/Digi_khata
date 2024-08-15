import 'package:flutter/material.dart';
import 'share_business_card.dart';
import 'package:digi_khata/widgets/cards_widget.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessAddress extends StatefulWidget {
  @override
  BusinessAddressState createState() => BusinessAddressState();
}

class BusinessAddressState extends State<BusinessAddress> {
  // ignore: unused_field
  double _buttonWidth = 200;
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  final List<String> cardTitles = List<String>.filled(12, " ");

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShareBusinessCard()),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 3),
                      ),
                      Text(
                        'Business Address',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 0),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 217, 233, 255),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color.fromARGB(255, 255, 71, 39),
                              ),
                              SizedBox(width: 2),
                              Text(
                                'Google Location',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 126, 253),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 255, 72, 0),
                      decoration: InputDecoration(
                        hintText: 'Shop/Building Number',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 121, 121, 121),
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
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 255, 72, 0),
                      decoration: InputDecoration(
                        hintText: 'Area/Locality',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 121, 121, 121),
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
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 255, 72, 0),
                      decoration: InputDecoration(
                        hintText: 'Islamabad',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 121, 121, 121),
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
