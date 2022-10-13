import 'package:flutter/material.dart';
import 'package:furniture_app/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static String routeName = "'DetailsScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
