import 'package:board_pro/presenter/screens/main_screen/main_screen.dart';
import 'package:board_pro/presenter/screens/settings/settings.dart';
import 'package:board_pro/presenter/screens/shop/shop.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BoardNavigationBar({this.selectedIndex, this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                "assets/images/svg/ic_home.svg",
                width: height / 28,
                height: height / 28,
                color: selectedIndex == 0 ? AppColors.RED : AppColors.GRAY,
              ),
            ),
            label: AppLocalizations.of(context).translate("home"),
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                "assets/images/svg/ic_bag_shop.svg",
                width: height / 28,
                height: height / 28,
                color: selectedIndex == 1 ? AppColors.RED : AppColors.GRAY,
              ),
            ),
            label: AppLocalizations.of(context).translate("shop"),
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: SvgPicture.asset(
                "assets/images/svg/ic_filter.svg",
                width: height / 28,
                height: height / 28,
                color: selectedIndex == 2 ? AppColors.RED : AppColors.GRAY,
              ),
            ),
            label: AppLocalizations.of(context).translate("settings"),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.RED,
        onTap: onItemTapped,
      ),
    );
  }
}
