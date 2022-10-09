import 'package:flutter/material.dart';
import 'package:furniture_app/recommended_furiture.dart';
import 'package:furniture_app/title_with_btn.dart';
import 'header_with_searchbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBar(size: size),
            TitleWithBtn(
              title: 'Recommend',
              press: () {},
            ),
            //it will cover 40% of the screen
            SingleChildScrollView(
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
            )
          ],
        ),
      ),
    );
  }
}
