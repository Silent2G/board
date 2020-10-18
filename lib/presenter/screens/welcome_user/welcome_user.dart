import 'package:board_pro/presenter/screens/welcome_user/widgets/valid_form.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomeUser extends StatefulWidget {

  @override
  State createState() {
    return WelcomeUserState();
  }
}

class WelcomeUserState extends State<WelcomeUser> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.WHITE,
        child: Scaffold(
          body: SafeArea(child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height / 40,
                          right: MediaQuery.of(context).size.height / 40),
                      child: ValidForm(),
                    )),
              );
            },
          )),
        ));
  }
}