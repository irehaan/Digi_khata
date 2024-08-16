import 'package:digi_khata/widgets/business_screens.dart/business_type_buttons_widget.dart';
import 'package:digi_khata/widgets/business_screens.dart/business_type_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/business_screens.dart/gradient_header.dart';
import 'package:digi_khata/widgets/business_screens.dart/next_button.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'business_category.dart';
import 'package:digi_khata/widgets/business_screens.dart/cards_widget.dart';
import 'package:digi_khata/screens/image_paths.dart';

class BusinessType extends StatefulWidget {
  const BusinessType({super.key});

  @override
  BusinessTypeState createState() => BusinessTypeState();
}

class BusinessTypeState extends State<BusinessType> {
  int? _selectedButtonIndex;
  bool _isOthersSelected = false;
  final TextEditingController _businessTypeController = TextEditingController();

  final List<String> cardTitles = List<String>.filled(12, " ");
  final List<String> buttonImages = [
    'assets/dg18.png',
    'assets/dg19.png',
    'assets/dg20.png',
    'assets/dg21.png',
    'assets/dg22.png',
    'assets/dg23.png',
  ];

  final List<String> buttonTexts = [
    'Retailer/shop',
    'Wholesaler',
    'Distributor',
    'Manufacturer',
    'Services',
    'Others',
  ];
  Color _buttonColor = Color.fromARGB(255, 255, 91, 26);

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessCategory()),
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
      _isOthersSelected = index == 5;
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
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
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
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
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
                  SizedBox(height: 2),
                  BusinessTypeButtonsWidget(
                    buttonImages: buttonImages,
                    buttonTexts: buttonTexts,
                    selectedButtonIndex: _selectedButtonIndex,
                    isOthersSelected: _isOthersSelected,
                    onButtonPressed: _onButtonPressed,
                    onAllPressed: _onAllPressed,
                  ),
                  if (_isOthersSelected)
                    BusinessTypeTextFieldWidget(
                        controller: _businessTypeController),
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
