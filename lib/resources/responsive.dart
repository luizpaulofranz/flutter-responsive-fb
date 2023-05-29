import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  const Responsive({Key? key}) : super(key: key);

  static bool isMobile(BuildContext context){
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isTablet(BuildContext context){
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isDesktop(BuildContext context){
    return MediaQuery.of(context).size.width >= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
