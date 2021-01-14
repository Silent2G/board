import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ColorButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;
  final double height;
  final Function onPressed;
  final String text;
  final double borderRadius;

  const ColorButton(
      {Key key,
      this.child,
      this.color,
      this.width = 330,
      this.height = 60.0,
      this.onPressed,
      this.borderRadius,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius != null
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            borderRadius: borderRadius != null
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.circular(10),
            onTap: onPressed,
            child: Center(
              child: child != null
                  ? child
                  : TitleText(
                      text,
                      textColor: AppColors.WHITE,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                      size: h / 50,
                    ),
            )),
      ),
    );
  }
}
