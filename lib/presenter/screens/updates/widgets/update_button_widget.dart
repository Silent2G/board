import 'package:board_pro/presenter/screens/updates/enum/update_state.dart';
import 'package:board_pro/presenter/widgets/button.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class UpdateButtonWidget extends StatefulWidget {
  final UpdateState updateState;
  final Function function;

  UpdateButtonWidget({@required this.updateState, @required this.function});

  @override
  State createState() {
    return UpdateButtonWidgetState();
  }
}

class UpdateButtonWidgetState extends State<UpdateButtonWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: ColorButton(
              height: height / 16,
              child: TitleText(
                choseButtonText(),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto",
                size: height / 60,
                textColor: AppColors.WHITE,
              ),
              color: choseButtonColor(),
              width: width * 0.4,
              borderRadius: height / 10,
              onPressed: widget.function,
            ),
          ),
          SizedBox(height: height / 90),
          Container(
            child: Center(
              child: Visibility(
                visible: getVisibilityText(),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: TitleText(
                  AppLocalizations.of(context).translate("connect_to_board"),
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.left,
                  fontFamily: "Roboto",
                  size: height / 65,
                ),
              ),
            )
          )
        ],
      ),
    );
  }

  bool getVisibilityText() {
    return widget.updateState == UpdateState.NOT_CONNECTED;
  }

  String choseButtonText() {
    String result;

    if (widget.updateState == UpdateState.DOWNLOAD) {
      result = AppLocalizations.of(context).translate("download_update");
    } else {
      result = AppLocalizations.of(context).translate("upgrade_board");
    }

    return result;
  }

  Color choseButtonColor() {
    Color result;
    if (widget.updateState == UpdateState.DOWNLOAD) {
      result = AppColors.BLUE;
    } else if (widget.updateState == UpdateState.NOT_CONNECTED) {
      result = AppColors.GRAY;
    } else if (widget.updateState == UpdateState.UPGRADE) {
      result = AppColors.GREEN;
    }

    return result;
  }
}
