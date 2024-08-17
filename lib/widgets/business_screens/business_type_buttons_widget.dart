import 'package:flutter/material.dart';

class BusinessTypeButtonsWidget extends StatelessWidget {
  final List<String> buttonImages;
  final List<String> buttonTexts;
  final int? selectedButtonIndex;
  final bool isOthersSelected;
  final Function(int) onButtonPressed;
  final VoidCallback onAllPressed;

  const BusinessTypeButtonsWidget({
    Key? key,
    required this.buttonImages,
    required this.buttonTexts,
    required this.selectedButtonIndex,
    required this.isOthersSelected,
    required this.onButtonPressed,
    required this.onAllPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What is your Business Type?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: GridView.count(
              shrinkWrap: true,
              childAspectRatio: 3,
              crossAxisCount: 2,
              crossAxisSpacing: 11,
              mainAxisSpacing: 8.0,
              children: isOthersSelected
                  ? [
                      ElevatedButton(
                        onPressed: onAllPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.all(14),
                          elevation: 1,
                          shadowColor: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              buttonImages[4],
                              width: 29,
                              height: 200,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'All',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.all(14),
                          elevation: 2,
                          shadowColor: Color.fromARGB(255, 0, 0, 0),
                          side: BorderSide(
                              color: Color.fromARGB(255, 245, 58, 1), width: 2),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              buttonImages[5],
                              width: 29,
                              height: 100,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Others',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ),
                    ]
                  : List.generate(buttonTexts.length, (index) {
                      return ElevatedButton(
                        onPressed: () {
                          onButtonPressed(index);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.all(14),
                          elevation: 2,
                          shadowColor: Color.fromARGB(255, 0, 0, 0),
                          side: BorderSide(
                              color: selectedButtonIndex == index
                                  ? Color.fromARGB(255, 245, 58, 1)
                                  : Color.fromARGB(255, 255, 255, 255),
                              width: 2),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              buttonImages[index],
                              width: 29,
                              height: 100,
                            ),
                            SizedBox(width: 8),
                            Text(
                              buttonTexts[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      );
                    }),
            ),
          ),
        ],
      ),
    );
  }
}
