import 'package:board_pro/api/notifications/board_notification.dart';
import 'package:board_pro/presenter/screens/main_screen/widgets/sliding_list_item.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayItemWidget extends StatelessWidget {
  final List<BoardNotification> list;

  DayItemWidget({@required this.list});

  @override
  Widget build(BuildContext context) {
    DateTime date = list[0].created;
    return buildWidget(date, context);
  }

  Widget buildWidget(DateTime date, BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: height / 50,
          ),
          Container(
            width: width,
            padding: EdgeInsets.only(left: height / 50),
            child: TitleText(
              checkDay(date, context),
              size: height / 55,
              textColor: AppColors.BLACK,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: height / 50,
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: getItemsList(),
            ),
          )
        ],
      ),
    );
  }

  String checkDay(DateTime date, BuildContext context) {
    String result;

    if (DateTime.now().day == date.day) {
      result = AppLocalizations.of(context).translate("today");
    } else if ((DateTime.now().subtract(Duration(days: 1))).day == date.day) {
      result = AppLocalizations.of(context).translate("yesterday");
    } else {
      result = DateFormat('dd MMMM yyyy').format(date);
    }

    return result;
  }

  List<Widget> getItemsList() {
    List<Widget> result = List();
    for (int i = 0; i < list.length; i++) {
      result.add(
        Container(
          child: SlidingListItem(notification: list[i]),
        ),
      );
    }
    return result;
  }
}
