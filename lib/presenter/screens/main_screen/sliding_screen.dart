import 'package:board_pro/api/notifications/board_notification.dart';
import 'package:board_pro/presenter/screens/main_screen/widgets/date_item_widget.dart';
import 'package:board_pro/presenter/widgets/scroll_wrap.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlidingScreen extends StatefulWidget {
  final String arrowPath;

  SlidingScreen({@required this.arrowPath});

  @override
  State createState() {
    return SlidingScreenState();
  }
}

class SlidingScreenState extends State<SlidingScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height / 60,
            ),
            Container(
              child: SvgPicture.asset(
                widget.arrowPath,
                color: AppColors.BLACK,
                width: height / 60,
                height: height / 60,
              ),
            ),
            Expanded(
                child: ScrollWrap(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: getWidgets(Utils().getMap(list)),
              ),
            ))
          ],
        ),
      ),
    );
  }

  List<Widget> getWidgets(Map<int, List<BoardNotification>> map) {
    List<Widget> list = List();

    map.forEach((key, value) {
      list.add(DayItemWidget(
        list: value,
      ));
    });

    return list;
  }
}

List<BoardNotification> list = [
  BoardNotification(
      1,
      "New board software update available!",
      "Tap here to update",
      "U",
      "G",
      "https://itarena.ua/agenda/",
      "U",
      DateTime.now()),
  BoardNotification(
      2,
      "What you think about mexican salat this evening?",
      "All you need is a bit pasta and bacon",
      "R",
      "T",
      "https://itarena.ua/agenda/",
      "F",
      DateTime.now()),
  BoardNotification(
      3,
      "Smart cutting board 2.0 available now!",
      "Tap here to check it out",
      "U",
      "B",
      "https://itarena.ua/agenda/",
      "U",
      DateTime.now().subtract(Duration(days: 1))),
  BoardNotification(
      4,
      "Try this recipe we recommend you",
      "All you need is a bit pasta and bacon",
      "R",
      "T",
      "https://itarena.ua/agenda/",
      "F",
      DateTime.now().subtract(Duration(days: 1))),
  BoardNotification(
      5,
      "Did'nt you know that your board can track time?",
      "Tap to learn how to do it",
      "R",
      "T",
      "https://itarena.ua/agenda/",
      "T",
      DateTime.now().subtract(Duration(days: 1))),
  BoardNotification(
      6,
      "Try this recipe we recommend you",
      "All you need is a bit pasta and bacon",
      "R",
      "T",
      "https://itarena.ua/agenda/",
      "F",
      DateTime.now().subtract(Duration(days: 1))),
  BoardNotification(
      6,
      "Try this recipe we recommend you",
      "All you need is a bit pasta and bacon",
      "R",
      "T",
      "https://itarena.ua/agenda/",
      "F",
      DateTime.now().subtract(Duration(days: 2))),
];
