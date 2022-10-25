import 'package:flutter/material.dart';
import '../theme.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: size.height * 0.04,
          ),
          padding: const EdgeInsets.all(kDefultPadding / 2),
          height: 55,
          width: 62,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(36),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22),
              ),
              const BoxShadow(
                offset: Offset(-15, -17),
                blurRadius: 22,
                color: Colors.white,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: Image.asset(
              icon,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
