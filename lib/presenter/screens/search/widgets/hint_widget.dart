import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class HintWidget extends StatefulWidget {
  final bool searched;

  HintWidget({@required this.searched});

  @override
  State createState() {
    return HintWidgetState();
  }
}

class HintWidgetState extends State<HintWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(width: width, child: getHint());
  }

  Widget getHint() {
    double height = MediaQuery.of(context).size.height;

    if (!widget.searched) {
      return Container(
        padding: EdgeInsets.only(bottom: height / 50),
        child: TitleText(AppLocalizations.of(context).translate("or_choose"),
            textColor: AppColors.BLACK,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.left,
            size: height / 55),
      );
    } else {
      return Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate("search_results"),
              textColor: AppColors.BLACK,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.left,
              size: height / 50,
            ),
          ),
          SizedBox(
            height: height / 100,
          ),
          Container(
            child: TitleText(AppLocalizations.of(context).translate("note"),
                textColor: AppColors.BLACK,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.left,
                size: height / 55),
          ),
          SizedBox(
            height: height / 50,
          ),
        ],
      ));
    }
  }
}
