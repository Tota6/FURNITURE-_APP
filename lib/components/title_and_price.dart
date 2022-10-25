import 'package:flutter/material.dart';

import '../theme.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kDefultPadding,
          right: kDefultPadding,
          top: kDefultPadding * 2 / 2 - 16,
          bottom: kDefultPadding * 2),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 22,
                    color: kPrimaryColor.withOpacity(0.6),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text('\$$price',
              style: TextStyle(
                  color: kPrimaryColor.withOpacity(0.7), fontSize: 25))
        ],
      ),
    );
  }
}
