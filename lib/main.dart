import 'package:flutter/material.dart';
import 'package:furniture_app/components/details.dart';
import 'package:furniture_app/homescreen.dart';
import 'package:furniture_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        'DetailsScreen': (context) => DetailsScreen()
      },
    );
  }
}
