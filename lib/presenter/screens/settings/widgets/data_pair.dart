import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class DataPair extends StatelessWidget {
  final String title;
  final String value;

  DataPair({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate(title),
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              textColor: AppColors.BLACK,
              size: height / 50,
            ),
          ),
          SizedBox(height: height / 120),
          Container(
            child: TitleText(
              value,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w700,
              textColor: AppColors.BLACK,
              size: height / 50,
            ),
          ),
        ],
      ),
    );
  }
}
