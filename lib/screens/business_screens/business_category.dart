import 'package:digi_khata/widgets/business_screens/gradient_header.dart';
import 'package:digi_khata/widgets/business_screens/next_button.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/screens/business_screens/business_address.dart';
import 'package:digi_khata/widgets/cards/cards_widget.dart';
import 'package:digi_khata/widgets/business_screens/business_category_buttons_widget.dart';
import 'package:digi_khata/widgets/business_screens/business_category_textfield_widget.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessCategory extends StatefulWidget {
  const BusinessCategory({super.key});

  @override
  BusinessCategoryState createState() => BusinessCategoryState();
}

class BusinessCategoryState extends State<BusinessCategory> {
  int? _selectedButtonIndex;
  bool _isOthersSelected = false;

  final List<String> cardTitles = List<String>.filled(12, " ");
  final List<String> buttonTexts = [
    'Kirana/Grocery',
    'Textile/Fashion',
    'Medical',
    'Electronics',
    'Mobile',
    'Automobile',
    'Sports',
    'Kids/Toys',
    'Hardware/Tools',
    'Others',
  ];
  final List<String> buttonImages = [
    'assets/dg24.png',
    'assets/dg25.png',
    'assets/dg26.png',
    'assets/dg27.png',
    'assets/dg28.png',
    'assets/dg29.png',
    'assets/dg30.png',
    'assets/dg31.png',
    'assets/dg32.png',
    'assets/dg33.png',
  ];
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessAddress()),
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
      _isOthersSelected = index == 9;
    });
  }

  void _onAllPressed() {
    setState(() {
      _isOthersSelected = false;
      _selectedButtonIndex = null;
    });
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
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                  const Text(
                    'What is your Business Category?',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  BusinessCategoryButtonsWidget(
                    buttonImages: buttonImages,
                    buttonTexts: buttonTexts,
                    selectedButtonIndex: _selectedButtonIndex,
                    isOthersSelected: _isOthersSelected,
                    onButtonPressed: _onButtonPressed,
                    onAllPressed: _onAllPressed,
                  ),
                  if (_isOthersSelected)
                    const BusinessCategoryTextFieldWidget(),
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
