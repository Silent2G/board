import 'package:board_pro/presenter/screens/login/view/you_are_selector/you_are_variants.dart';
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
            child: Text(
              AppLocalizations.of(context).translate("you_are"),
              style: TextStyle(
                  color: AppColors.BLACK,
                  fontStyle: FontStyle.normal,
                  fontSize: MediaQuery.of(context).size.height / 45,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto"),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 100),
          YouAreVariants(),
          SizedBox(height: MediaQuery.of(context).size.height / 80),
          Container(
            child: Text(
              AppLocalizations.of(context).translate("none"),
              style: TextStyle(
                  color: AppColors.BLACK,
                  fontStyle: FontStyle.normal,
                  fontSize: MediaQuery.of(context).size.height / 45,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto"),
            ),
          ),
        ],
      ),
    );
  }
}
