import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/buttons/buttons.dart';
import 'mobile_number_setup.dart';

class LanguageSelection extends StatelessWidget {
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
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.all(33),
                      child: Column(
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
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 13,
                      childAspectRatio: 1.8,
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      children: [
                        LanguageButton('English'),
                        LanguageButton('Roman Urdu'),
                        LanguageButton('اردو'),
                        LanguageButton('سندھی'),
                        LanguageButton('پشتو'),
                        LanguageButton('فارسی'),
                        LanguageButton('العربية'),
                        LanguageButton('বাংলা'),
                        LanguageButton('हिंदी'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: 'By continuing, you agree to our ',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 104, 17),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Handle Privacy Policy tap
                              },
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'T&C',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 104, 17),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Handle T&C tap
                              },
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
      body: Column(
        children: [
          SizedBox(height: 27),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 236, 106, 0), // Dark orange
                  Color.fromARGB(255, 221, 33, 0), // Light orange
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/dg1.png',
                      width: 40,
                      height: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Digi',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Khata',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'English',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () => _showLanguageSelector(context),
                      ),
                      SizedBox(width: 0),
                    ],
                  ),
                ),
              ],
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
          Divider(
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
                Expanded(
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

class LanguageButton extends StatelessWidget {
  final String text;

  LanguageButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // Set height for all buttons
      child: TextButton(
        onPressed: () {
          // Handle language selection
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
              width: 1,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
