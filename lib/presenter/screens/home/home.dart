import 'package:board_pro/presenter/screens/home/widgets/board_navigation_bar.dart';
import 'package:board_pro/presenter/screens/main_screen/main_screen.dart';
import 'package:board_pro/presenter/screens/settings/settings.dart';
import 'package:board_pro/presenter/screens/shop/shop.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  State createState() {
    return HomeState();
  }
}

final items = [MainScreen(), Shop(), Settings()];

class HomeState extends State<Home> {
  int _tabSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        color: AppColors.WHITE,
        child: Scaffold(
          body: _buildPage(),
          bottomNavigationBar: BoardNavigationBar(
            selectedIndex: _tabSelectedIndex,
            onItemTapped: (int value) {
              setState(() {
                _tabSelectedIndex = value;
              });
            },
          ),
        ));
  }

  Widget _buildPage() {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      child: IndexedStack(index: _tabSelectedIndex, children: items),
    );
  }
}
