import 'package:digi_khata/screens/third_screen.dart';
import 'package:flutter/material.dart';

class BusinessScreen7 extends StatefulWidget {
  @override
  BusinessScreen7State createState() => BusinessScreen7State();
}

class BusinessScreen7State extends State<BusinessScreen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 30,
              color: Color.fromARGB(255, 255, 60, 0),
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/dg36.gif',
                    height: 120,
                    width: 120,
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
                    'Business is ready for use',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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
              child: Container(
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
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()),
                    );
                  },
                  child: Text(
                    'START',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 150),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
