import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:digi_khata/widgets/main_screen_suppliers/gradient_header_supplier.dart';

class Suppliers extends StatefulWidget {
  @override
  _SuppliersState createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderGradientSupplier(),
              Container(
                width: double.infinity,
                height: 120,
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
                        'assets/home_img/suppliers/suppliers.png',
                        height: 200,
                      ),
                      SizedBox(height: 20),
                      const Text(
                        '1- Add suppliers',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        '2- Add entries & maintain khata',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        '3- Manage your purchases',
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
              const Divider(
                color: Color.fromARGB(255, 224, 224, 224),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            top: 100,
            left: 11,
            right: 11,
            child: Container(
              width: double.infinity,
              height: 74,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 5, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hide Balance',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 38, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: EdgeInsets.only(top: 1, left: 0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            child: Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rs 0',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 170, 23),
                                      ),
                                    ),
                                    Text(
                                      'Total purchase for Aug',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 151, 151, 151),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Container(
                                  height: 30,
                                  padding: EdgeInsets.symmetric(horizontal: 7),
                                  child: Center(
                                    child: VerticalDivider(
                                      color: Color.fromARGB(255, 15, 15, 15),
                                      thickness: 0.2,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rs 0',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 170, 23),
                                      ),
                                    ),
                                    Text(
                                      "You'll give",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 151, 151, 151),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 30,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Center(
                                    child: VerticalDivider(
                                      color: Color.fromARGB(255, 26, 26, 26),
                                      thickness: 0.2,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                IconButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_right_sharp,
                                    color: Color.fromARGB(255, 218, 7, 0),
                                    size: 28,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 12,
            right: 12,
            child: Container(
              height: 105,
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  final List<String> imagePaths = [
                    'assets/home_img/customers/hm1.png',
                    'assets/home_img/customers/hm2.png',
                    'assets/home_img/customers/hm3.png',
                    'assets/home_img/customers/hm4.png',
                    'assets/home_img/customers/hm5.png',
                  ];

                  final List<String> buttonTexts = [
                    'Cash Book',
                    'Stock Book',
                    'Bill Book',
                    'Staff Book',
                    'Recycle Bin',
                  ];

                  return SizedBox(
                    width: 66,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        elevation: 2,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            imagePaths[index],
                            height: 29,
                            width: 40,
                          ),
                          SizedBox(height: 1),
                          Text(
                            buttonTexts[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            bottom: 75,
            right: 20,
            child: Row(
              children: [
                const Icon(
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
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 0, 122, 7),
                        Color.fromARGB(255, 27, 165, 0),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt_1_outlined,
                        color: Colors.white),
                    label: const Text(
                      "ADD SUPPLIER",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                )
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
          width: 50,
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 126, 126, 126),
          ),
        ),
      ],
    );
  }
}
