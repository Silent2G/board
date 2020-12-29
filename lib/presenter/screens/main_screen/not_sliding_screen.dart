import 'package:board_pro/presenter/screens/main_screen/widgets/board_battery_widget.dart';
import 'package:board_pro/presenter/screens/main_screen/widgets/search_block_widget.dart';
import 'package:board_pro/presenter/screens/main_screen/widgets/update_button.dart';
import 'package:board_pro/presenter/screens/search/enum/search_state.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class NotSlidingScreen extends StatefulWidget {
  @override
  State createState() {
    return NotSlidingScreenState();
  }
}

class NotSlidingScreenState extends State<NotSlidingScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [AppColors.MAIN_TOP, AppColors.MAIN_BOTTOM],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height / 40,
                      right: MediaQuery.of(context).size.height / 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: height / 80),
                      Container(
                          width: width,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: UpdateButton(),
                              ),
                              Container(
                                child: BoardButteryWidget(),
                              )
                            ],
                          )),
                      SizedBox(height: height / 10),
                      Container(
                        child: Center(
                          child: SearchBlockWidget(searchState: SearchState.NOT_SYNC),
                        ),
                      )
                    ],
                  )),
            )));
  }
}
