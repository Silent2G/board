import 'package:board_pro/presenter/screens/login/view/logo.dart';
import 'package:board_pro/presenter/screens/login/view/welcome_widget.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.WHITE,
      child: Scaffold(
        body: SafeArea(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height / 10),
                        Container(
                          child: Logo(),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height / 25),
                        Container(
                          child: WelcomeWidget(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
        ),
      )
    );
  }
}