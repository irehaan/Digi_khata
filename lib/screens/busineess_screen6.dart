import 'package:digi_khata/widgets/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/screens/business_screen7.dart';
import 'package:digi_khata/widgets/cards_widget.dart';

class BusinessScreen6 extends StatefulWidget {
  @override
  BusinessScreen6State createState() => BusinessScreen6State();
}

class BusinessScreen6State extends State<BusinessScreen6> {
  double _buttonWidth = 200;
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  final List<String> cardTitles = List<String>.filled(12, " ");

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessScreen7()),
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
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: CustomCardWidget(
                      cardTitles: cardTitles,
                      imagePaths: imagePaths,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
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
                        SizedBox(height: 12),
                        Text(
                          'Congratulations',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 60, 0),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Business Card is ready to share',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
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
                      icon:
                          Image.asset('assets/dg34.png', height: 33, width: 30),
                      label:
                          Text("SHARE", style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                        ),
                        elevation: 0,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: _onNextPressed,
                    child: Text("NO THANKS",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 81, 0))),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color.fromARGB(255, 255, 60, 0)),
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
