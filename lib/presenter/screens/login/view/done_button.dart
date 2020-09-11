import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  final VoidCallback voidCallback;

  DoneButton(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        fillColor: AppColors.GREEN,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.height / 35),
        ),
        onPressed: voidCallback,
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 60,
              left: MediaQuery.of(context).size.height / 30,
              right: MediaQuery.of(context).size.height / 30,
              bottom: MediaQuery.of(context).size.height / 60),
          child: Text(AppLocalizations.of(context).translate("done"),
              style: TextStyle(
                  color: AppColors.WHITE,
                  fontStyle: FontStyle.normal,
                  fontSize: MediaQuery.of(context).size.height / 35,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto")),
        ),
      ),
    );
  }
}
