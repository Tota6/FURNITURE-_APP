import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_and_price.dart';
import 'package:furniture_app/theme.dart';

import 'icon_card.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: ImageAndIcons(size: size),
          ),
          const TitleAndPrice(
            title: 'Angleica',
            country: 'Russia',
            price: 440,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 80,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: kPrimaryColor)))),
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 80,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(241, 248, 240, 227)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Descreption',
                    style: TextStyle(
                        color: kTextColor.withOpacity(1), fontSize: 18),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
