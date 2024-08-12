import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ThirdScreen extends StatelessWidget {
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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 130,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 218, 98, 0),
                      Color.fromARGB(255, 255, 30, 0),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'atomcamp',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_sharp,
                            color: Colors.blue,
                          ),
                          label: Text(
                            'BULK REMINDER',
                            style: TextStyle(
                              color: Color.fromARGB(255, 95, 183, 255),
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Color.fromARGB(255, 60, 167, 255),
                                width: 2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Customers',
                            style: TextStyle(
                              color: Color.fromARGB(255, 216, 216, 216),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Suppliers',
                            style: TextStyle(
                              color: Color.fromARGB(255, 216, 216, 216),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Banks',
                            style: TextStyle(
                              color: Color.fromARGB(255, 216, 216, 216),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Color.fromARGB(255, 216, 216, 216),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 110,
                color: Color.fromARGB(255, 245, 245, 245),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/dg40.png',
                        height: 200,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '1-Add customers',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '2-Add entries & maintain khata',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '3-Send payment reminders',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 110),
              Divider(
                color: const Color.fromARGB(255, 224, 224, 224),
                thickness: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildImageWithText('assets/dg1.png', 'Home'),
                    _buildImageWithText('assets/dg41.png', 'Pos'),
                    _buildImageWithText('assets/dg42.png', 'Money'),
                    _buildImageWithText('assets/dg43.png', 'More'),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 84,
            right: 20,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: Color.fromARGB(255, 255, 60, 0),
                  size: 53,
                )
                    .animate(
                      onPlay: (controller) => controller.loop(),
                    )
                    .moveX(
                      begin: 0,
                      end: 20,
                      duration: 500.ms,
                      curve: Curves.easeInOut,
                    )
                    .then()
                    .moveX(
                      begin: 20,
                      end: 0,
                      duration: 500.ms,
                      curve: Curves.easeInOut,
                    ),
                SizedBox(width: 50),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_add_alt_1_outlined,
                      color: Colors.white),
                  label: Text(
                    "ADD CUSTOMER",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 60, 0),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithText(String imagePath, String text) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 40,
          width: 30,
        ),
        SizedBox(height: 0),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 126, 126, 126),
          ),
        ),
      ],
    );
  }
}
