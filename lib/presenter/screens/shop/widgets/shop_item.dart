import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class ShopItem extends StatefulWidget {
  final Function onPressed;
  final String path;
  final String title;

  ShopItem(
      {@required this.onPressed, @required this.path, @required this.title});

  @override
  State createState() {
    return ShopItemState();
  }
}

class ShopItemState extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(bottom: height / 40),
      width: width,
      child: GestureDetector(
          onTap: widget.onPressed,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(height / 80),
                  child: Container(
                      child: Stack(
                    children: [
                      Container(
                        width: width,
                        height: height / 4,
                        child: Image.asset(widget.path, fit: BoxFit.fill),
                      ),
                      Container(
                        width: width,
                        height: height / 4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.TRANSPARENT,
                              AppColors.TRANSPARENT,
                              AppColors.transparentBlack
                            ],
                          ),
                        ),
                      )
                    ],
                  ))),
              Container(
                padding: EdgeInsets.only(bottom: height / 50),
                child: TitleText(
                  AppLocalizations.of(context).translate(widget.title),
                  textColor: AppColors.WHITE,
                  size: height / 52,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
              )
            ],
          )),
    );
  }
}
