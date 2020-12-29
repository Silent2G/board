import 'package:board_pro/presenter/screens/settings/widgets/choose_rainbow_widget.dart';
import 'package:board_pro/presenter/screens/settings/widgets/data_pair.dart';
import 'package:board_pro/presenter/screens/settings/widgets/data_pair_counter.dart';
import 'package:board_pro/presenter/screens/settings/widgets/data_pair_switch.dart';
import 'package:board_pro/presenter/screens/settings/widgets/picker_pair.dart';
import 'package:board_pro/presenter/widgets/scroll_wrap.dart';
import 'package:board_pro/presenter/widgets/shadow_wrap.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
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
            body: Container(
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.GREEN_LIGHT, AppColors.GREEN_DARK],
        ),
      ),
      child: ScrollWrap(
        child: Container(
          child: SafeArea(
              child: Container(
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
                  Container(
                    padding:
                        EdgeInsets.only(left: height / 40, right: height / 40),
                    child: ShadowWrap(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: height / 40, vertical: height / 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DataPair(title: "name", value: "Alex"),
                          SizedBox(
                            height: height / 70,
                          ),
                          DataPair(
                              title: "your",
                              value: "sandrrichfif911@gmail.com"),
                          SizedBox(
                            height: height / 70,
                          ),
                          DataPair(title: "your_are", value: "Vegan"),
                          SizedBox(
                            height: height / 70,
                          ),
                          DataPair(
                              title: "account",
                              value: "Fitbit: sandrrichfif911@gmail.com"),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(height: height / 80),
                  Container(
                    color: AppColors.GRAY,
                    width: width,
                    height: 1,
                  ),
                  SizedBox(height: height / 80),
                  Container(
                    padding:
                        EdgeInsets.only(left: height / 40, right: height / 40),
                    child: ShadowWrap(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height / 40, horizontal: height / 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: width,
                            child: TitleText(
                              AppLocalizations.of(context)
                                  .translate("to_change"),
                              textAlign: TextAlign.left,
                              textColor: AppColors.BLACK,
                              fontFamily: "Roboto",
                              size: height / 55,
                            ),
                          ),
                          SizedBox(height: height / 80),
                          Container(
                            child: PickerPair(
                              text: "default_color_for_white",
                              // function: () {
                              //   print("click");
                              // },
                              color: AppColors.SWITCH_RED,
                              tag: "switcher_1",
                            ),
                          ),
                          SizedBox(height: height / 60),
                          Container(
                            child: PickerPair(
                              text: "default_color_for_yellow",
                              // function: () {
                              //   print("click");
                              // },
                              color: AppColors.YELLOW,
                              tag: "switcher_2",
                            ),
                          ),
                          SizedBox(height: height / 80),
                          Container(
                            width: width,
                            child: DataPairSwitch(
                              title: "make",
                              value: "you_may_use",
                              onChanged: (bool value) {},
                              switchValue: false,
                            ),
                          ),
                          SizedBox(height: height / 80),
                          Container(
                            child: DataPairCounter(
                                title: "default", value: "from"),
                          ),
                          SizedBox(height: height / 80),
                          Container(
                            width: width,
                            child: DataPairSwitch(
                              title: "rainbow",
                              value: "this_will",
                              onChanged: (bool value) {},
                              switchValue: true,
                            ),
                          ),
                          SizedBox(height: height / 80),
                          ChooseRainbowWidget(
                            function: () {
                              print("rainbow");
                            },
                          ),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(height: height / 40),
                ],
              ),
            ),
          )),
        ),
      ),
    )));
  }
}
