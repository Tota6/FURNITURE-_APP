import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_and_price.dart';

import '../theme.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefultPadding * 2.5),
      child: SizedBox(
        height: size.height * 0.5,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefultPadding * 2 - 5),
                        onPressed: () {
                          Navigator.of(context).pop('DetailsScreen');
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
                      ),
                    ),

                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(top: kDefultPadding),
                      child: const IconCard(
                        icon: 'assets/length.png',
                      ),
                    ),
                    const IconCard(
                      icon: 'assets/weigth.png',
                    ),
                    const IconCard(
                      icon: 'assets/wood.jpg',
                    ),
                    const IconCard(
                      icon: 'assets/colors.jpg',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.86,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.20),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/details chair.webp'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
