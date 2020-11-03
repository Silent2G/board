import 'package:flutter/material.dart';

class ColorCircle extends StatefulWidget {
  final Color color;
  final Function function;

  ColorCircle({this.color, this.function});

  @override
  State createState() {
    return ColorCircleState();
  }
}

class ColorCircleState extends State<ColorCircle> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: FloatingActionButton(
        onPressed: widget.function,
        backgroundColor: widget.color,
      ),
    );
  }
}
