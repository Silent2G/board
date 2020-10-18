import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class EditNameWidget extends StatefulWidget {
  final String hintValue;

  EditNameWidget(this.hintValue);

  @override
  State createState() {
    return EditNameWidgetState();
  }
}

class EditNameWidgetState extends State<EditNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.next,
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
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 23,
            height: 24 / 16,
            letterSpacing: 0.35,
            fontWeight: FontWeight.w600,
            color: AppColors.BLACK),
        decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderSide: BorderSide(width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.height / 55),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(MediaQuery.of(context).size.height / 55)),
            borderSide: BorderSide(width: 1.0, color: AppColors.BLUE_GREEN),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(MediaQuery.of(context).size.height / 55)),
            borderSide: BorderSide(width: 1.0, color: AppColors.RED),
          ),
          hintStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 23,
            fontWeight: FontWeight.w500,
            height: 24 / 16,
            letterSpacing: 0.35,
            color: AppColors.GRAY,
          ),
          hintText: widget.hintValue != null
              ? AppLocalizations.of(context).translate(widget.hintValue)
              : null,
          contentPadding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height / 55,
              bottom: MediaQuery.of(context).size.height / 55,
              top: MediaQuery.of(context).size.height / 55),
        ),
      ),
    );
  }
}
