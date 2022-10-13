import 'package:flutter/material.dart';
import 'package:furniture_app/components/details.dart';
import 'package:furniture_app/theme.dart';

class FurnitureFeature extends StatelessWidget {
  const FurnitureFeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FurnitureFeatureCard(
            image: 'assets/pink_foty.jpg',
            press: () {},
          ),
          FurnitureFeatureCard(
            image: 'assets/chair2.jpg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FurnitureFeatureCard extends StatelessWidget {
  const FurnitureFeatureCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefultPadding,
          bottom: kDefultPadding / 2,
          top: kDefultPadding / 2,
        ),
        width: size.width * 0.6,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
