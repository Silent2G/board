import 'package:board_pro/presenter/screens/main_screen/sliding_screen.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'not_sliding_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State createState() {
    return MinScreenState();
  }
}

class MinScreenState extends State<MainScreen> {
  String arrowPath;

  @override
  void initState() {
    arrowPath = "assets/images/svg/ic_arrow_up.svg";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        body: SlidingUpPanel(
            minHeight: height / 3.7,
            maxHeight: height / 1.5,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 15,
                blurRadius: 30,
              ),
            ],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(height / 60),
              topLeft: Radius.circular(height / 60),
            ),
            onPanelClosed: () {
              setState(() {
                arrowPath = "assets/images/svg/ic_arrow_up.svg";
              });
            },
            onPanelOpened: () {
              setState(() {
                arrowPath = "assets/images/svg/ic_arrow_down.svg";
              });
            },
            panel: SlidingScreen(arrowPath: arrowPath),
            body: NotSlidingScreen()),
      ),
    );
  }
}
