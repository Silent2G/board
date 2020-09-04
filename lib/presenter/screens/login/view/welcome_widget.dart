import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        AppLocalizations.of(context).translate("welcome"),
        style: TextStyle(
          color: AppColors.BLACK,
            fontStyle: FontStyle.normal,
            fontSize: MediaQuery.of(context).size.height / 35,
            fontWeight: FontWeight.normal,
            fontFamily: "Roboto"),
      ),
    );
  }
}
