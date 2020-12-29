import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double size;
  final Color textColor;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  final double height;
  final FontWeight fontWeight;
  final String fontFamily;

  const TitleText(this.title,
      {this.textColor,
      this.size = 24,
      this.textAlign = TextAlign.center,
      this.overflow = TextOverflow.clip,
      this.maxLines,
      this.fontWeight,
      this.fontFamily,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
            color: (textColor == null) ? AppColors.BLACK : textColor,
            fontSize: size,
            height: height,
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
  final Function(String) onChanged;
  final Function(String) onSaved;

  SearchInputText(
      {this.hint,
      this.size,
      this.textColor,
      this.fontFamily,
      this.textEditingController,
      this.suffixIcon,
      this.onChanged,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: height / 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height / 50),
        color: AppColors.GRAY.withOpacity(0.2)
      ),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintStyle: TextStyle(
              fontFamily: fontFamily != null ? fontFamily : "Roboto",
              fontSize: size,
              fontWeight: FontWeight.w400,
              color: textColor != null ? textColor : AppColors.BLACK.withOpacity(0.3)),
          suffixIcon: Container(
            child: suffixIcon,
          ),
        ),
        onChanged: onChanged,
        onSaved: onSaved,
      ),
    );
  }
}
