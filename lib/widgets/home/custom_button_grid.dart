import 'package:flutter/material.dart';

class CustomButtonGrid extends StatelessWidget {
  const CustomButtonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/home_img/customers/hm1.png',
      'assets/home_img/customers/hm2.png',
      'assets/home_img/customers/hm3.png',
      'assets/home_img/customers/hm4.png',
      'assets/home_img/customers/hm5.png',
    ];

    final List<String> buttonTexts = [
      'Cash Book',
      'Stock Book',
      'Bill Book',
      'Staff Book',
      'Recycle Bin',
    ];

    return Container(
      height: 105,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) {
          return SizedBox(
            width: 66,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                elevation: 2,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    imagePaths[index],
                    height: 29,
                    width: 40,
                  ),
                  const SizedBox(height: 1),
                  Text(
                    buttonTexts[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
