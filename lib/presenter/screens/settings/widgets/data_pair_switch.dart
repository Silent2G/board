import 'package:board_pro/presenter/screens/settings/widgets/settings_switcher.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class DataPairSwitch extends StatefulWidget {
  final String title;
  final String value;
  final Function(bool value) onChanged;
  final bool switchValue;

  DataPairSwitch({this.title, this.value, this.onChanged, this.switchValue});

  @override
  State createState() {
    return DataPairSwitchState();
  }
}

class DataPairSwitchState extends State<DataPairSwitch> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
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
                    size: height / 60,
                  ),
                ),
                SizedBox(height: height / 160),
                Container(
                  child: TitleText(
                    AppLocalizations.of(context).translate(widget.value),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    textColor: AppColors.BLACK,
                    size: height / 78,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SettingsSwitcher(
                initValue: widget.switchValue, onChanged: widget.onChanged),
          )
        ],
      ),
    );
  }
}
