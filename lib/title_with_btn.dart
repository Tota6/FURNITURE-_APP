import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class TitleWithBtn extends StatelessWidget {
  const TitleWithBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithUnderLine(
            text: title,
          ),
          const Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: press(),
            child: const Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithUnderLine extends StatelessWidget {
  const TitleWithUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      height: 24,
      child: Stack(
        //  alignment = AlignmentDirectional.topStart,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefultPadding / 9, top: 0.0),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefultPadding),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
