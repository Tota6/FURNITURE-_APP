import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
