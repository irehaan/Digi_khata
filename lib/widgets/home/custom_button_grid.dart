// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButtonGrid extends StatelessWidget {
  const CustomButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<Homeitems> items = [
      Homeitems(
        imagePath: 'assets/home_img/customers/hm1.png',
        title: 'Cash Book',
        onTap: () {
          //
        },
      ),
      Homeitems(
        imagePath: 'assets/home_img/customers/hm2.png',
        title: 'Stock Book',
        onTap: () {
          //
        },
      ),
      Homeitems(
        imagePath: 'assets/home_img/customers/hm3.png',
        title: 'Bill Book',
        onTap: () {
          //
        },
      ),
      Homeitems(
        imagePath: 'assets/home_img/customers/hm4.png',
        title: 'Staff Book',
        onTap: () {
          //
        },
      ),
      Homeitems(
        imagePath: 'assets/home_img/customers/hm5.png',
        title: 'Recycle Bin',
        onTap: () {
          //
        },
      ),
    ];
    return SizedBox(
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(items.length, (index) {
              return Container(
                width: 66,
                height: 60,
                margin: EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        items[index].imagePath ?? "",
                        height: 29,
                        width: 40,
                      ),
                      const SizedBox(height: 1),
                      Text(
                        items[index].title ?? "",
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
          )),
    );
  }
}

class Homeitems {
  String? imagePath;
  String? title;
  void Function()? onTap;
  Homeitems({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });
}
