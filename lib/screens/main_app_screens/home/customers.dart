import 'package:digi_khata/widgets/home/add_customer_button.dart';
import 'package:digi_khata/widgets/home/custom_button_grid.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/main_screen_customer/gradient_header_customer.dart';
import 'package:digi_khata/widgets/home/home_custom_button_text.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
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
              const HeaderGradientCustomer(),
              Container(
                width: double.infinity,
                height: 120,
                color: const Color.fromARGB(255, 245, 245, 245),
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 110),
              const Divider(
                color: Color.fromARGB(255, 224, 224, 224),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      imagePath: 'assets/dg1.png',
                      text: 'Home',
                      onPressed: () {},
                    ),
                    CustomButton(
                      imagePath: 'assets/dg41.png',
                      text: 'Pos',
                      onPressed: () {},
                    ),
                    CustomButton(
                      imagePath: 'assets/dg42.png',
                      text: 'Money',
                      onPressed: () {},
                    ),
                    CustomButton(
                      imagePath: 'assets/dg43.png',
                      text: 'More',
                      onPressed: () {},
                    ),
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
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 5, right: 16),
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
                      padding: const EdgeInsets.only(top: 1, left: 50),
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
                                      'You will give',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 151, 151, 151),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  height: 30,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 7),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                        color:
                                            Color.fromARGB(255, 151, 151, 151),
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
            ),
          ),
          const Positioned(
            top: 160,
            left: 12,
            right: 12,
            child: CustomButtonGrid(),
          ),
          const AddCustomerButton(),
        ],
      ),
    );
  }
}
