import 'package:digi_khata/widgets/home/add_customer_button.dart';
import 'package:digi_khata/widgets/home/custom_button_grid.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/screens/dashboard/main_screen_customer/gradient_header.dart';
import 'package:digi_khata/widgets/home/home_custom_button_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Column(
          children: [
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
      ),
    );
  }
}
