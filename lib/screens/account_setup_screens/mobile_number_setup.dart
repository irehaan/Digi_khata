import 'package:digi_khata/otpscreen.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:digi_khata/widgets/mobile_number_screen/continue_button.dart';
import 'package:digi_khata/widgets/mobile_number_screen/digi_khata_header.dart';
import 'package:digi_khata/widgets/mobile_number_screen/mobile_number_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  _MobileNumberScreenState createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  final TextEditingController phoneController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      setState(() {
        _isButtonEnabled = phoneController.text.length >= 13;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            const Center(child: DigiKhataHeader()),
            const SizedBox(height: 32),
            const Text(
              "Let's get started!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please enter your mobile number",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 32, 32, 32),
              ),
            ),
            const SizedBox(height: 32),
            MobileNumberInput(controller: phoneController),
            const Spacer(),
            Center(
              child: ContinueButton(
                isEnabled: _isButtonEnabled,
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException ex) {},
                      codeSent: (String verificationid, int? resendtoken) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Otpscreen(
                                    verificationid: verificationid,
                                  )),
                        );
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                      phoneNumber: phoneController.text.toString());
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
