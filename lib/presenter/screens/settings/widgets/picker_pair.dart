import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class PickerPair extends StatefulWidget {
  final String text;
  final Function function;
  final Color color;
  final String tag;

  PickerPair({this.text, this.function, this.color, this.tag});

  @override
  State createState() {
    return PickerPairState();
  }
}

class PickerPairState extends State<PickerPair> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate(widget.text),
              textColor: AppColors.BLACK,
              size: height / 65,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
              child: SizedBox(
            width: height / 25,
            height: height / 25,
            child: FloatingActionButton(
              onPressed: widget.function,
              backgroundColor: widget.color,
              heroTag: widget.tag,
            ),
          ))
        ],
      ),
    );
  }
}
