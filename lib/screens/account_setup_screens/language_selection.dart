import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/buttons/buttons.dart';
import 'package:digi_khata/widgets/language_grid.dart';
import 'package:digi_khata/widgets/language_screen_header.dart';
import 'package:digi_khata/widgets/custom_appbar.dart';
import 'mobile_number_setup.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({super.key});

  void _showLanguageSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 247, 244, 244),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.all(33),
                      child: const Column(
                        children: [
                          Text(
                            'Select your language',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    LanguageGrid(),
                    SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: 'By continuing, you agree to our ',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Privacy Policy',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 104, 17),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'T&C',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 104, 17),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Header(
            onLanguagePressed: (context) => _showLanguageSelector(context),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/dg2.png',
                width: 800,
                height: 800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Manage your business: Send \nReminders and receive payments!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 50),
          const Divider(
            color: Color.fromARGB(255, 0, 0, 0),
            thickness: 0.5,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/dg3.png',
                  width: 90,
                  height: 80,
                ),
                SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Trusted by 50 lakh+ Businesses \nacross Pakistan',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 129, 129, 129),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          StartButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MobileNumberScreen()),
              );
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
