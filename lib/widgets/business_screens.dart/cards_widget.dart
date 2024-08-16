import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCardWidget extends StatelessWidget {
  final List<String> cardTitles;
  final List<String> imagePaths;

  const CustomCardWidget({
    Key? key,
    required this.cardTitles,
    required this.imagePaths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: cardTitles.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(imagePaths[index]),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                cardTitles[index],
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        autoPlay: false,
        viewportFraction: 0.89,
      ),
    );
  }
}
