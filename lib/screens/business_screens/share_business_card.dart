import 'package:digi_khata/widgets/business_screens.dart/action_buttons.dart';
import 'package:digi_khata/widgets/business_screens.dart/card_completion_info.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/screens/business_screens/business_ready.dart';
import 'package:digi_khata/widgets/business_screens.dart/gradient_header.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:digi_khata/widgets/business_screens.dart/cards_widget.dart';
import 'package:digi_khata/screens/image_paths.dart';

class ShareBusinessCard extends StatefulWidget {
  const ShareBusinessCard({super.key});

  @override
  CardShareState createState() => CardShareState();
}

class CardShareState extends State<ShareBusinessCard> {
  final List<String> cardTitles = List<String>.filled(12, " ");

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BusinessReady()),
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
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: CustomCardWidget(
                      cardTitles: cardTitles,
                      imagePaths: imagePaths,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const CardCompletionInfo(),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ActionButtons(onNextPressed: _onNextPressed),
            ),
          ),
        ],
      ),
    );
  }
}
