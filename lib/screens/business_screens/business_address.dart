import 'package:digi_khata/screens/business_screens/share_business_card.dart';
import 'package:digi_khata/widgets/business_screens/address_header.dart';
import 'package:digi_khata/widgets/business_screens/address_textfield.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/business_screens/gradient_header.dart';
import 'package:digi_khata/widgets/business_screens/next_button.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:digi_khata/widgets/cards/cards_widget.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessAddress extends StatefulWidget {
  const BusinessAddress({super.key});

  @override
  BusinessAddressState createState() => BusinessAddressState();
}

class BusinessAddressState extends State<BusinessAddress> {
  Color _buttonColor = const Color.fromARGB(255, 255, 91, 26);

  final List<String> cardTitles = List<String>.filled(12, " ");

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShareBusinessCard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      body: Stack(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GradientHeader(title: 'Set up DigiKhata'),
            ],
          ),
          Positioned(
            top: 92,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    child: CustomCardWidget(
                      cardTitles: cardTitles,
                      imagePaths: imagePaths,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const AddressHeader(),
                  const SizedBox(height: 8),
                  const AddressTextField(hintText: 'Shop/Building Number'),
                  const SizedBox(height: 16),
                  const AddressTextField(hintText: 'Area/Locality'),
                  const SizedBox(height: 16),
                  const AddressTextField(hintText: 'Islamabad'),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Center(
              child: NextButton(
                buttonColor: _buttonColor,
                onPressed: () {
                  setState(() {
                    _buttonColor = const Color.fromARGB(255, 255, 72, 0);
                  });
                  Future.delayed(
                      const Duration(milliseconds: 0), _onNextPressed);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
