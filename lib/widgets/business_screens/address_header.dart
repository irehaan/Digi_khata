import 'package:flutter/material.dart';

class AddressHeader extends StatelessWidget {
  const AddressHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
        ),
        const Text(
          'Business Address',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 0),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 217, 233, 255),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 255, 71, 39),
                ),
                SizedBox(width: 2),
                Text(
                  'Google Location',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 126, 253),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
