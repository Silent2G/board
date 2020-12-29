import 'dart:async';

import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class SearchHeadWidget extends StatefulWidget {
  final double weight;
  final bool userSearched;
  final double height;

  SearchHeadWidget(
      {@required this.weight,
      @required this.userSearched,
      @required this.height});

  @override
  State createState() {
    return SearchHeadWidgetState();
  }
}

class SearchHeadWidgetState extends State<SearchHeadWidget> {
  Timer timer;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: widget.height,
      child: Visibility(
        visible: !widget.userSearched,
        child: Container(
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height / 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: TitleText(
                        widget.weight.toString(),
                        textColor: AppColors.BLACK,
                        fontWeight: FontWeight.w500,
                        // fontFamily: "Elektra",
                        size: height / 20,
                      ),
                    ),
                    Container(
                      child: TitleText(
                        " g",
                        textColor: AppColors.BLACK,
                        fontWeight: FontWeight.w500,
                        // fontFamily: "Elektra",
                        size: height / 20,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.centerLeft,
                child: TitleText(
                  AppLocalizations.of(context).translate("search_what"),
                  textColor: AppColors.BLACK,
                  fontWeight: FontWeight.w700,
                  size: height / 45,
                ),
              ),
              SizedBox(
                height: height / 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
