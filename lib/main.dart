import 'package:flutter/material.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/constants/strings.dart';
import 'package:learning_course/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: primaryColor,
          secondary: secondaryColor,
        ),
        primarySwatch: Colors.deepPurple,
        fontFamily: 'IranSans',
        textTheme: const TextTheme(

        ),
      ),
      home: const Root(),
    );
  }
}


