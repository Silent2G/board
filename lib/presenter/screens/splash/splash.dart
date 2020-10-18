import 'package:board_pro/presenter/screens/login/login.dart';
import 'package:board_pro/presenter/screens/splash/widgets/splash_image_widget.dart';

import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    _initRedirect(context);
    return Container(
      color: AppColors.WHITE,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 10,
                right: MediaQuery.of(context).size.width / 10),
            child: SplashImageWidget(),
          ),
        ),
      ),
    );
  }

  void _initRedirect(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    _openScreen(context);
  }

  void _openScreen(BuildContext context) async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
