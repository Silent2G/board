import 'package:board_pro/presenter/widgets/scroll_wrap.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State createState() {
    return SettingsState();
  }
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Scaffold(
            body: ScrollWrap(
      child: Container(
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.GREEN_LIGHT, AppColors.GREEN_DARK],
          ),
        ),
        child: SafeArea(
            child: Container(
          child: Padding(
              padding: EdgeInsets.only(left: height / 40, right: height / 40),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/png/board_scaffold.png",
                        width: width * 0.5,
                        height: height / 12,
                      ),
                    ),
                  ],
                ),
              )),
        )),
      ),
    )));
  }
}
