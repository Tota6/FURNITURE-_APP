import 'package:flutter/material.dart';
import 'package:furniture_app/recommended_furiture.dart';
import 'package:furniture_app/title_with_btn.dart';
import 'buttom_nav_bar.dart';
import 'furniture_feature.dart';
import 'header_with_searchbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static String routeName = "/MyHomePage";

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
            const RecommendedFurniture(),
            TitleWithBtn(
              title: 'Furniture Features',
              press: () {},
            ),
            const FurnitureFeature()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
