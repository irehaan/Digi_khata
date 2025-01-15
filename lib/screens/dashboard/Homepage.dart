import 'package:digi_khata/widgets/home/add_customer_button.dart';
import 'package:digi_khata/widgets/home/custom_button_grid.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/screens/dashboard/main_screen_customer/gradient_header.dart';
import 'package:digi_khata/widgets/home/home_custom_button_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
              const HeaderGradient(),
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 90),
                      Image.asset(
                        'assets/dg40.png',
                        height: 200,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '1- Add customers',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '2- Add entries & maintain khata',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 126, 126, 126),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '3- Send payment reminders',
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
              // const SizedBox(height: 110),
            ],
          ),
          Positioned(
            top: 100,
            left: 11,
            right: 11,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
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
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 15),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 50,
                              child: Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rs 0',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 170, 23),
                                        ),
                                      ),
                                      Text(
                                        'You will give',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 151, 151, 151),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 30),
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: const Center(
                                      child: VerticalDivider(
                                        color: Color.fromARGB(255, 15, 15, 15),
                                        thickness: 0.2,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rs 0',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 209, 0, 0),
                                        ),
                                      ),
                                      Text(
                                        'You will give',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 151, 151, 151),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: const Center(
                                      child: VerticalDivider(
                                        color: Color.fromARGB(255, 26, 26, 26),
                                        thickness: 0.2,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
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
                SizedBox(height: 10),
                CustomButtonGrid(),
              ],
            ),
          ),
          Positioned(
            bottom: 1,
            // left: 12,
            right: 12,
            child: const AddCustomerButton(),
          ),
        ],
      ),
    );
  }
}
