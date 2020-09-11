import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class YouAreItem extends StatefulWidget {
  final String text;
  final bool selected;
  final VoidCallback voidCallback;

  YouAreItem(this.text, this.selected, this.voidCallback);

  @override
  State createState() {
    return YouAreItemState();
  }
}

class YouAreItemState extends State<YouAreItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height / 80),
      decoration: BoxDecoration(
          border: Border.all(
              color: widget.selected ? AppColors.GREEN : Colors.transparent),
      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height / 40)),
      child: GestureDetector(
        onTap: widget.voidCallback,
        child: Text(
          AppLocalizations.of(context).translate(widget.text),
          style: TextStyle(
              color: AppColors.BLACK,
              fontStyle: FontStyle.normal,
              fontSize: MediaQuery.of(context).size.height / 45,
              fontWeight: FontWeight.normal,
              fontFamily: "Roboto"),
        ),
      )
    );
  }
}
