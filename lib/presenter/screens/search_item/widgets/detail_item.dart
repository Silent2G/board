import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class DetailItem extends StatefulWidget {
  final String title;
  final String value;

  DetailItem({@required this.title, @required this.value});

  @override
  State createState() {
    return DetailItemState();
  }
}

class DetailItemState extends State<DetailItem> {
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
            child: TitleText(
              AppLocalizations.of(context).translate(widget.title),
              size: height / 60,
              textColor: AppColors.BLACK,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: height / 80,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height / 50),
                border: Border.all(color: AppColors.VIOLET_BORDER, width: 1)),
            padding: EdgeInsets.symmetric(
                vertical: height / 45, horizontal: height / 30),
            child: TitleText(
              widget.value,
              size: height / 60,
              textColor: AppColors.BLACK,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
