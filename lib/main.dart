import 'package:facebook_clone/resources/local_colors.dart';
import 'package:facebook_clone/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: LocalColors.backgroundColor,
      ),
      home: const Home(),
    );
  }
}
