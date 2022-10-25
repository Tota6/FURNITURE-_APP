import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefultPadding * 2,
          right: kDefultPadding * 2,
          bottom: kDefultPadding / 3,
          top: kDefultPadding / 2),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 34,
            color: kPrimaryColor.withOpacity(0.34),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/heart.png',
              fit: BoxFit.fill,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/bell.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/shopping-bag.png',
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
