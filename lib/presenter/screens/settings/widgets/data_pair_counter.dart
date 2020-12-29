import 'package:board_pro/presenter/screens/settings/widgets/counter_widget.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class DataPairCounter extends StatefulWidget {
  final String title;
  final String value;

  DataPairCounter({@required this.title, @required this.value});

  @override
  State createState() {
    return DataPairCounterState();
  }
}

class DataPairCounterState extends State<DataPairCounter> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    AppLocalizations.of(context).translate(widget.title),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    textColor: AppColors.BLACK,
                    size: height / 50,
                  ),
                ),
                SizedBox(height: height / 160),
                Container(
                  child: TitleText(
                    AppLocalizations.of(context).translate(widget.value),
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
            child: CounterWidget(initValue: 50)
          )
        ],
      ),
    );
  }
}
