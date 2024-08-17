import 'package:flutter/material.dart';

class BusinessCategoryButtonsWidget extends StatelessWidget {
  final List<String> buttonImages;
  final List<String> buttonTexts;
  final int? selectedButtonIndex;
  final bool isOthersSelected;
  final Function(int) onButtonPressed;
  final VoidCallback onAllPressed;

  const BusinessCategoryButtonsWidget({
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                    elevation: 2,
                    shadowColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/dg22.png',
                        width: 29,
                        height: 300,
                      ),
                      SizedBox(width: 3),
                      const Text(
                        'All Categories',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.normal),
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
                    elevation: 1,
                    shadowColor: Color.fromARGB(255, 0, 0, 0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 245, 58, 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        buttonImages[9],
                        width: 29,
                        height: 100,
                      ),
                      SizedBox(width: 8),
                      const Text(
                        'Others',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.normal),
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
                    padding: EdgeInsets.all(10),
                    elevation: 2,
                    shadowColor: Color.fromARGB(255, 0, 0, 0),
                    side: BorderSide(
                      color: selectedButtonIndex == index
                          ? Color.fromARGB(255, 255, 60, 0)
                          : Color.fromARGB(255, 249, 249, 249),
                    ),
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
                        style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                );
              }),
      ),
    );
  }
}
