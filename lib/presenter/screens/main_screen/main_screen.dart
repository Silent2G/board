import 'package:board_pro/presenter/screens/main_screen/widgets/update_button.dart';
import 'package:board_pro/presenter/widgets/scroll_wrap.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  @override
  State createState() {
    return MinScreenState();
  }
}

class MinScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        child: Scaffold(
          backgroundColor: AppColors.BLUE,
          body: SafeArea(child: ScrollWrap(
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 40,
                    right: MediaQuery.of(context).size.height / 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: width,
                      alignment: Alignment.centerLeft,
                      child: UpdateButton(),
                    ),
                    // Center(
                    //   child: TitleText("MainScreen"),
                    // ),
                  ],
                )
            ),
          )),
        ));return Container();
  }
}