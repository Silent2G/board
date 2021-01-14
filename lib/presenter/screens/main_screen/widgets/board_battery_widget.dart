import 'package:battery_indicator/battery_indicator.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class BoardButteryWidget extends StatefulWidget {

  @override
  State createState() {
    return BoardButteryWidgetState();
  }
}

class BoardButteryWidgetState extends State<BoardButteryWidget> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Container(
            child: BatteryIndicator(
              style: BatteryIndicatorStyle.flat,
              colorful: true,
              showPercentNum: true,
              mainColor: AppColors.GREEN,
              size: height / 40,
              ratio: 4,
              showPercentSlide: true,
            ),
          ),
          SizedBox(height: height / 100),
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate("board_battery"),
              textColor: AppColors.UPDATE_GRAY,
              fontWeight: FontWeight.w400,
              size: height / 55, // text board buttery size
            ),
          )
        ],
      )
    );
  }
}