import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class DetailPair extends StatelessWidget {
  final String title;
  final double value;
  final bool fatText;
  final String suffix;

  DetailPair({this.title, this.value, this.fatText, this.suffix});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(bottom: height / 150),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate(title),
              textColor: AppColors.BLACK,
              size: height / 50,
              fontWeight: fatText != null && fatText
                  ? FontWeight.w700
                  : FontWeight.w400,
            ),
          ),
          Container(
            child: TitleText(
              getValueText(),
              textColor: AppColors.BLACK,
              size: height / 50,
              fontWeight: fatText != null && fatText
                  ? FontWeight.w700
                  : FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  String getValueText() {
    String result;
    if (value == 0) {
      result = "-";
    } else {
      result = value.toString() + " " + suffix;
    }
    return result;
  }
}
