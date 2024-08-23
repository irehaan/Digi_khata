import 'package:digi_khata/controller.dart';
import 'package:digi_khata/widgets/cards/cards_widget.dart';
import 'package:digi_khata/widgets/business_screens/gradient_header.dart';
import 'package:digi_khata/widgets/business_screens/next_button.dart';
import 'package:digi_khata/widgets/business_screens/owner_name_form.dart';
import 'package:digi_khata/widgets/language_selection_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'business_name_Setup.dart';
import 'package:digi_khata/screens/image_paths.dart';

class OwnerNameSetup extends StatefulWidget {
  const OwnerNameSetup({super.key});

  @override
  OwnerNameState createState() => OwnerNameState();
}

class OwnerNameState extends State<OwnerNameSetup> {
  final TextEditingController _ownerNameController = TextEditingController();
  Color _buttonColor = const Color.fromARGB(255, 255, 91, 26);

  final List<String> cardTitles = List<String>.filled(12, " ");

  void _onNextPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessNameSetup()),
    );
  }

  final HomeController ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      // You can initialize your controller here the first time. Don't use init in your other GetBuilders of same controller
      builder: (ctrl2) => Scaffold(
        appBar: const CustomAppBar(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      child: CustomCardWidget(
                        cardTitles: cardTitles,
                        imagePaths: imagePaths,
                      ),
                    ),
                    Text(
                      '${ctrl2.custName.value}',
                      style: TextStyle(
                          color: ctrl2.darkMode.value
                              ? Colors.amberAccent
                              : Colors.cyanAccent),
                    ),
                    // Text(Provider.of<Homecontroller>().custnam),
                    // Text(context.watch<Homecontroller>().custNam),
                    Obx(
                      () {
                        return Text(ctrl.custName.value);
                      },
                    ),
                    const SizedBox(height: 16),
                    OwnerNameForm(
                      controller: _ownerNameController,
                      onChanged: (p0) {
                        ctrl.updatevalue(_ownerNameController.text);
                        // setState(() {
                        //   //
                        // });
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          ctrl.updatevalue2();
                        },
                        child: Text("Dark Mode")),
                    SizedBox(height: MediaQuery.of(context).size.width / 1.5),
                    Center(
                      child: NextButton(
                        buttonColor: _buttonColor,
                        onPressed: () {
                          setState(() {
                            _buttonColor =
                                const Color.fromARGB(255, 255, 72, 0);
                          });
                          Future.delayed(
                              const Duration(milliseconds: 0), _onNextPressed);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
