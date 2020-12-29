import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class BoardSoftWidget extends StatefulWidget {
  final String version;

  BoardSoftWidget({@required this.version});

  @override
  State createState() {
    return BoardSoftWidgetState();
  }
}

class BoardSoftWidgetState extends State<BoardSoftWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate("board_software"),
              fontFamily: "Roboto",
              fontWeight: FontWeight.w700,
              size: height / 40,
            ),
          ),
          SizedBox(
            height: height / 90,
          ),
          Container(
            child: TitleText(
              getVersion(),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
              size: height / 45,
            ),
          )
        ],
      ),
    );
  }

  String getVersion() {
    return AppLocalizations.of(context).translate("board_soft") +
        " " +
        widget.version +
        " | " +
        AppLocalizations.of(context).translate("stable");
  }
}
