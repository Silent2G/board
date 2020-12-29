import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class EditNameWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintValue;

  final FocusNode node;

  EditNameWidget({this.controller, this.hintValue, this.node});

  @override
  State createState() {
    return EditNameWidgetState();
  }
}

class EditNameWidgetState extends State<EditNameWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: TextFormField(
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.next,
        controller: widget.controller,
        validator: (name) {
          if (name.isEmpty) {
            return AppLocalizations.of(context).translate("please_enter_name");
          } else {
            return name.length < 6
                ? AppLocalizations.of(context).translate("name_must_be")
                : null;
          }
        },
        onChanged: (String text) {},
        autofocus: true,
        onEditingComplete: () => widget.node.nextFocus(),
        style: TextStyle(
            fontSize: height / 55,
            height: 24 / 16,
            letterSpacing: 0.35,
            fontWeight: FontWeight.w600,
            color: AppColors.BLACK),
        decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderSide: BorderSide(width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(height / 55),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(height / 55)),
            borderSide: BorderSide(width: 1.0, color: AppColors.BLUE_GREEN),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(height / 55)),
            borderSide: BorderSide(width: 1.0, color: AppColors.RED),
          ),
          hintStyle: TextStyle(
            fontSize: height / 55,
            fontWeight: FontWeight.w500,
            height: 24 / 16,
            letterSpacing: 0.35,
            color: AppColors.GRAY,
          ),
          hintText: widget.hintValue != null
              ? AppLocalizations.of(context).translate(widget.hintValue)
              : null,
          contentPadding: EdgeInsets.only(
              left: height / 55, bottom: height / 55, top: height / 55),
        ),
      ),
    );
  }
}
