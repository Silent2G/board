import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height / 20,
          right: MediaQuery.of(context).size.height / 20),
      child: Image(image: AssetImage("assets/images/png/logo_2x.png")),
    ));
  }
}
