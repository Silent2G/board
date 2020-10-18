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
    return Container(
        color: AppColors.WHITE,
        child: Scaffold(
          body: SafeArea(child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height / 40,
                            right: MediaQuery.of(context).size.height / 40),
                        child: Container(
                          child: Center(
                            child: TitleText("MainScreen"),
                          ),
                        )
                    )),
              );
            },
          )),
        ));return Container();
  }
}