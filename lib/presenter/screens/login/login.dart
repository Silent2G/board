import 'package:board_pro/presenter/screens/login/widgets/valid_form.dart';
import 'package:board_pro/presenter/widgets/scroll_wrap.dart';
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
              child: ScrollWrap(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height / 40,
                  right: MediaQuery.of(context).size.height / 40),
              child: SignUpValidForm(),
            ),
          )),
        ));
  }
}
