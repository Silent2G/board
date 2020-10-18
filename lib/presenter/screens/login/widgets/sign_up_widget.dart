import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        AppLocalizations.of(context).translate("sign_up"),
        style: TextStyle(
            color: AppColors.BLACK,
            fontStyle: FontStyle.normal,
            fontSize: MediaQuery.of(context).size.height / 50,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto"),
      ),
    );
  }
}