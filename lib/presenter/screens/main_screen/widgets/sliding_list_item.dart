import 'package:board_pro/api/notifications/board_notification.dart';
import 'package:board_pro/presenter/widgets/shadow_wrap.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SlidingListItem extends StatefulWidget {
  final BoardNotification notification;

  SlidingListItem({@required this.notification});

  @override
  State createState() {
    return SlidingListItemState();
  }
}

class SlidingListItemState extends State<SlidingListItem> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.only(
            bottom: height / 70, left: height / 50, right: height / 50),
        child: ShadowWrap(
          shadow: BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
          ),
          child: GestureDetector(
            onTap: () {
              print("click " + widget.notification.id.toString());
              if (widget.notification.notifType == "R" &&
                  widget.notification.actionLink != null) {
                launchURL(widget.notification.actionLink);
              }
            },
            child: Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height / 80),
                gradient: getGradient(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: height / 80,
                  ),
                  Container(
                    child: widget.notification.iconType != null
                        ? SvgPicture.asset(
                            chooseIconPath(),
                            color: chooseTextColor(),
                            width: height / 35,
                            height: height / 35,
                          )
                        : Container(),
                  ),
                  SizedBox(
                    width: height / 50,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: height / 100,
                        ),
                        Container(
                          width: width,
                          child: widget.notification.name != null
                              ? TitleText(
                                  widget.notification.name,
                                  textColor: chooseTextColor(),
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.left,
                                  size: height / 53,
                                )
                              : Container(),
                        ),
                        SizedBox(
                          height: height / 140,
                        ),
                        Container(
                          width: width,
                          child: widget.notification.description != null
                              ? TitleText(
                                  widget.notification.description,
                                  textColor: chooseTextColor(),
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.left,
                                  size: height / 58,
                                )
                              : Container(),
                        ),
                        SizedBox(
                          height: height / 100,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: height / 60,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  LinearGradient getGradient() {
    if (widget.notification.color == "B") {
      return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [AppColors.BLUE_LEFT, AppColors.BLUE_RIGHT],
      );
    } else if (widget.notification.color == "G") {
      return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [AppColors.GREEN_LEFT, AppColors.GREEN_RIGHT],
      );
    } else {
      return null;
    }
  }

  String chooseIconPath() {
    String result;
    if (widget.notification.iconType == "F") {
      result = "assets/images/svg/ic_meal.svg";
    } else if (widget.notification.iconType == "T") {
      result = "assets/images/svg/ic_clock.svg";
    } else if (widget.notification.iconType == "U") {
      result = "assets/images/svg/ic_download_soft.svg";
    }

    return result;
  }

  Color chooseTextColor() {
    Color color;
    if (widget.notification.color == "T") {
      color = AppColors.BLACK;
    } else {
      color = AppColors.WHITE;
    }
    return color;
  }
}
