import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class LoginFitBitButton extends StatelessWidget {
  final VoidCallback voidCallback;

  LoginFitBitButton(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: RawMaterialButton(
        fillColor: AppColors.BLUE_GREEN,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.height / 55),
        ),
        onPressed: voidCallback,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 50,
                  bottom: MediaQuery.of(context).size.height / 50,
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context).translate("log"),
                    style: TextStyle(
                        color: AppColors.WHITE,
                        fontStyle: FontStyle.normal,
                        fontSize: MediaQuery.of(context).size.height / 45,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Roboto"),
                  ),
                )),
            Align(
              alignment: Alignment(0.8, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.height / 20,
                height: MediaQuery.of(context).size.height / 20,
                child: Image(
                    image: AssetImage("assets/images/png/fit_bit_logo_2x.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
