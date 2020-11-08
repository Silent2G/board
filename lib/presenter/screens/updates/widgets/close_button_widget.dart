import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        icon: Image.asset(
          "assets/images/png/close.png",
          color: AppColors.UPDATE_GRAY,
        ),
      ),
    );
  }
}
