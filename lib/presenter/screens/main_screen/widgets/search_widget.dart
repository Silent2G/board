import 'package:board_pro/presenter/screens/search/enum/search_state.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatefulWidget {
  final SearchState searchEnum;
  final double value;
  final Function function;

  SearchWidget({this.searchEnum, this.value, this.function});

  @override
  State createState() {
    return SearchWidgetState();
  }
}

class SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.function,
      child: getSearchWidget(height),
    );
  }

  Widget getSearchWidget(double height) {
    if (widget.searchEnum == SearchState.SYNC) {
      return widget.value != null
          ? Container(
              child: TitleText(
                widget.value.toString(),
                fontWeight: FontWeight.w400,
                fontFamily: "Elektra",
                textColor: AppColors.BLACK,
                size: height / 40,
              ),
            )
          : Container(
              child: TitleText(
                "0.0 g",
                fontWeight: FontWeight.w400,
                fontFamily: "Elektra",
                textColor: AppColors.BLACK,
                size: height / 25,
              ),
            );
    } else {
      return Container(
          child: Center(
            child: Container(
              width: height / 17,
              height: height / 17,
              child: SvgPicture.asset("assets/images/svg/bluetooth.svg"),
            ),
          ));
    }
  }
}
