import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TitleText(AppLocalizations.of(context).translate("welcome"),
          textColor: AppColors.BLACK,
          size: MediaQuery.of(context).size.height / 45,
          fontWeight: FontWeight.w600,
          fontFamily: "Roboto"),
    );
  }
}
