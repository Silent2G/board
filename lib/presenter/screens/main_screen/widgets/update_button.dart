import 'package:board_pro/presenter/screens/updates/enum/update_state.dart';
import 'package:board_pro/presenter/screens/updates/updates.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdateButton extends StatefulWidget {
  final UpdatesState updatesState;

  UpdateButton({this.updatesState});

  @override
  State createState() {
    return UpdateButtonState();
  }
}

class UpdateButtonState extends State<UpdateButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Updates(updateState: UpdateState.UPGRADE)));
        },
        child: Container(
            width: height / 12,
            height: height / 12,
            decoration:
                BoxDecoration(color: AppColors.WHITE, shape: BoxShape.circle),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: SvgPicture.asset(
                      "assets/images/svg/ic_download_soft.svg",
                      width: height / 25,
                      height: height / 25,
                      color: AppColors.UPDATE_GRAY,
                    ),
                  ),
                  SizedBox(height: height / 150),
                  Container(
                    child: TitleText(
                      AppLocalizations.of(context).translate("updates"),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      size: height / 70,
                      textColor: AppColors.UPDATE_GRAY,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
