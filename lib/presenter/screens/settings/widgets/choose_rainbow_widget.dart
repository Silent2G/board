import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class ChooseRainbowWidget extends StatefulWidget {
  final Function function;

  ChooseRainbowWidget({@required this.function});

  @override
  State createState() {
    return ChooseRainbowWidgetState();
  }
}

class ChooseRainbowWidgetState extends State<ChooseRainbowWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: TitleText(
                    AppLocalizations.of(context).translate("choose"),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.left,
                    textColor: AppColors.BLACK,
                    size: height / 50,
                  ),
                ),
                SizedBox(height: height / 160),
                Container(
                  child: TitleText(
                    AppLocalizations.of(context).translate("click"),
                    fontFamily: "Roboto",
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w400,
                    textColor: AppColors.BLACK,
                    size: height / 55,
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: GestureDetector(
            onTap: widget.function,
            child: TitleText(
              AppLocalizations.of(context).translate("rainbow_with"),
              fontFamily: "Roboto",
              textAlign: TextAlign.left,
              fontWeight: FontWeight.w400,
              textColor: AppColors.BLACK,
              size: height / 55,
            ),
          ))
        ],
      ),
    );
  }
}
