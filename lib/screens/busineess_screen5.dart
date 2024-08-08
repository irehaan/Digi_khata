import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BusinessScreen5 extends StatelessWidget {
  final List<String> cardTitles = [
    " ",
    " ",
    " ",
    " ",
    " ",
  ];

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
                height: 150,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 236, 106, 0),
                      Color.fromARGB(255, 255, 52, 1)
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
            top: 119,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(14, 9),
                  topRight: Radius.elliptical(14, 9),
                  bottomLeft: Radius.elliptical(14, 9),
                  bottomRight: Radius.elliptical(14, 9),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200,
                        enlargeCenterPage: false,
                        enableInfiniteScroll: false,
                        autoPlay: false,
                        viewportFraction: 0.89,
                      ),
                      items: cardTitles.asMap().entries.map((entry) {
                        int index = entry.key;
                        String title = entry.value;
                        return Builder(
                          builder: (BuildContext context) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(index == 0
                                        ? 'assets/dg6.jpeg'
                                        : 'assets/dg6.jpeg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
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
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Color.fromARGB(255, 236, 106, 0)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'NEXT',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
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
