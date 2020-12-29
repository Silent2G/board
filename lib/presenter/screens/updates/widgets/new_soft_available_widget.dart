import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class NewSoftAvailableWidget extends StatelessWidget {
  final String version;
  final String description;

  NewSoftAvailableWidget({@required this.version, @required this.description});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate("new_software"),
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto",
              size: height / 40,
            ),
          ),
          SizedBox(height: height / 80),
          Container(
            child: TitleText(
              getVersion(context),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
              size: height / 45,
            ),
          ),
          SizedBox(height: height / 80),
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate("what's_new"),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
              size: height / 50,
            ),
          ),
          SizedBox(height: height / 80),
          Container(
            child: TitleText(
              description,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left,
              fontFamily: "Roboto",
              size: height / 50,
            ),
          )
        ],
      ),
    );
  }

  String getVersion(BuildContext context) {
    return AppLocalizations.of(context).translate("board_soft") +
        " " +
        version +
        " | " +
        AppLocalizations.of(context).translate("stable");
  }
}
