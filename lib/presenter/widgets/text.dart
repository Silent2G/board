import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double size;
  final Color textColor;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  final FontWeight fontWeight;
  final String fontFamily;

  const TitleText(this.title,
      {this.textColor,
      this.size = 24,
      this.textAlign = TextAlign.center,
      this.overflow = TextOverflow.clip,
      this.maxLines,
      this.fontWeight,
      this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
            color: (textColor == null) ? AppColors.BLACK : textColor,
            fontSize: size,
            fontStyle: FontStyle.normal,
            fontFamily: fontFamily != null ? fontFamily : "Roboto",
            fontWeight: fontWeight));
  }
}

class SearchInputText extends StatelessWidget {
  final String hint;
  final double size;
  final Color textColor;
  final String fontFamily;
  final TextEditingController textEditingController;
  final Widget suffixIcon;

  SearchInputText({
    this.hint,
    this.size,
    this.textColor,
    this.fontFamily,
    this.textEditingController,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            fontFamily: fontFamily != null ? fontFamily : "Roboto",
            fontSize: size,
            fontWeight: FontWeight.w400,
            color: textColor != null ? textColor : AppColors.BLACK),
        suffixIcon: Container(
          child: suffixIcon,
        ),
      ),
      onChanged: (text) {},
      onSaved: (text) {},
    );
  }
}