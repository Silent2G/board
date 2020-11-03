import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class SettingsSwitcher extends StatefulWidget {
  final Function(bool value) onChanged;
  final bool initValue;

  SettingsSwitcher({this.onChanged, this.initValue});

  @override
  State createState() {
    return SettingsSwitcherState();
  }
}

class SettingsSwitcherState extends State<SettingsSwitcher> {

  bool switcher;

  @override
  void initState() {
    switcher = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Switch(
        activeTrackColor: AppColors.SWITCH_LIGHT_GREEN,
        activeColor: AppColors.GREEN,
        value: switcher,
        onChanged: (bool value) {
          widget.onChanged(value);
          setState(() {
            switcher = !switcher;
          });
        },
        // onChanged:,
      ),
    );
  }
}
