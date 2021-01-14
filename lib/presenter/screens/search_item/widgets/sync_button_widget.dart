import 'package:board_pro/presenter/widgets/button.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/widgets.dart';

class SyncButtonWidget extends StatelessWidget {
  final bool isFitBitSync;

  SyncButtonWidget({@required this.isFitBitSync});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: ColorButton(
                onPressed: () {},
                height: height / 17,
                text: AppLocalizations.of(context).translate("sync_it"),
                color: isFitBitSync
                    ? AppColors.GREEN
                    : AppColors.UPDATE_GRAY),
          ),
          SizedBox(
            height: height / 110,
          ),
          Container(
              child: Visibility(
            visible: !isFitBitSync,
            child: TitleText(
              AppLocalizations.of(context).translate("add_fit_bit"),
              textColor: AppColors.UPDATE_GRAY,
              size: height / 55,
            ),
          ))
        ],
      ),
    );
  }
}
