
import 'package:board_pro/presenter/screens/login/widgets/you_are_selector/you_are_variants.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class YouAreSelector extends StatefulWidget {
  @override
  State createState() {
    return YouAreSelectorState();
  }
}

class YouAreSelectorState extends State<YouAreSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate("you_are"),
              textColor: AppColors.BLACK,
              size: MediaQuery.of(context).size.height / 50,
              fontWeight: FontWeight.normal,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 100),
          YouAreVariants(),
        ],
      ),
    );
  }
}
