import 'package:flutter/material.dart';

class ShadowWrap extends StatelessWidget {
  final Widget child;

  ShadowWrap({this.child});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(height / 80)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
              )
            ]),
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(height / 80)),
            ),
            child: child));
  }
}
