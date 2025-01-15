import 'package:digi_khata/screens/dashboard/Homepage.dart';
import 'package:flutter/material.dart';

class HeaderGradient extends StatelessWidget {
  const HeaderGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 20),
            decoration: const BoxDecoration(
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
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
                      icon: const Icon(
                        Icons.notifications_none_sharp,
                        color: Colors.blue,
                      ),
                      label: const Text(
                        'BULK REMINDER',
                        style: TextStyle(
                          color: Color.fromARGB(255, 95, 183, 255),
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 60, 167, 255), width: 2),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                const TabBar(
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,
                  unselectedLabelColor: Color.fromARGB(255, 216, 216, 216),
                  tabs: [
                    Tab(text: 'Customers'),
                    Tab(text: 'Suppliers'),
                    Tab(text: 'Banks'),
                    Tab(text: 'All'),
                  ],
                ),
              ],
            ),
          ),
          // Ensure the Expanded widget works inside the Column
          SizedBox(
            height: 300,
            child: Expanded(
              child: TabBarView(
                children: [
                  Homepage(),
                  Center(child: Text('Suppliers Screen')),
                  Center(child: Text('Banks Screen')),
                  Center(child: Text('All Screen')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
