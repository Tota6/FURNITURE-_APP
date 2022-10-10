import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class RecommendedFurniture extends StatelessWidget {
  const RecommendedFurniture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedFurnitureCard(
            country: 'Russin',
            image: 'assets/chair2.jpg',
            title: 'samntha',
            price: 250,
            press: () {},
          ),
          RecommendedFurnitureCard(
            country: 'America',
            image: 'assets/fotii.jpg',
            title: 'White Sofa',
            price: 450,
            press: () {},
          ),
          RecommendedFurnitureCard(
            country: 'Egypt',
            image: 'assets/pink_foty.jpg',
            title: 'Pink Sofa',
            price: 560,
            press: () {},
          ),
          RecommendedFurnitureCard(
            country: 'Usa',
            image: 'assets/white_chair.jpg',
            title: 'White Chair',
            price: 300,
            press: () {},
          ),
          RecommendedFurnitureCard(
            country: 'Usa',
            image: 'assets/chair.jpg',
            title: 'Yellow Chair',
            price: 700,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedFurnitureCard extends StatelessWidget {
  const RecommendedFurnitureCard({
    Key? key,
    required this.image,
    required this.country,
    required this.title,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, country, title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        bottom: kDefultPadding * 2.0,
        top: kDefultPadding / 2,
        left: kDefultPadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.fill,
            width: 200,
            height: 150,
          ),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: const EdgeInsets.all(kDefultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.green,
                        ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
