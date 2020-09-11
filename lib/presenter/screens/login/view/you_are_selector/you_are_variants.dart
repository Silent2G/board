import 'package:board_pro/presenter/screens/login/view/you_are_selector/you_are_item.dart';
import 'package:flutter/material.dart';

class YouAreVariants extends StatefulWidget {

  @override
  State createState() {
    return YouAreVariantsState();
  }
}

class YouAreVariantsState extends State<YouAreVariants> {
  bool vegan = false;
  bool vegeterian = false;
  bool meatEater = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: YouAreItem("vegan", vegan, () {
                setState(() {
                  vegan = true;
                  vegeterian = false;
                  meatEater = false;
                });
              }),
            )
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: YouAreItem("vegetarian", vegeterian, () {
                setState(() {
                  vegan = false;
                  vegeterian = true;
                  meatEater = false;
                });
              }),
            )
          ),
          Container(
            child: Align(
              alignment: Alignment.centerRight,
              child: YouAreItem("meat_eater", meatEater, () {
                setState(() {
                  vegan = false;
                  vegeterian = false;
                  meatEater = true;
                });
              }),
            )
          ),
        ],
      ),
    );
  }
}