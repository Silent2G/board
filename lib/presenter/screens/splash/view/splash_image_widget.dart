import 'package:flutter/material.dart';

class SplashImageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage("assets/images/png/splash_screen_2x.png")),
    );
  }
}