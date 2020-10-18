import 'package:board_pro/presenter/blocks/welcome_user_block.dart';
import 'package:board_pro/presenter/screens/login/widgets/done_button.dart';
import 'package:board_pro/presenter/screens/login/widgets/logo.dart';
import 'package:board_pro/presenter/screens/login/widgets/you_are_selector/you_are_selector.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class ValidForm extends StatefulWidget {
  @override
  State createState() {
    return ValidFormState();
  }
}

class ValidFormState extends State<ValidForm> {
  final _formKey = GlobalKey<FormState>();
  WelcomeUserBlock _welcomeUserBloc;

  @override
  void initState() {
    _welcomeUserBloc = WelcomeUserBlock();
    super.initState();
  }

  @override
  void dispose() {
    _welcomeUserBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: height / 16),
              Container(
                child: Logo(),
              ),
              SizedBox(height: height / 25),
              Container(
                child: TitleText(
                  AppLocalizations.of(context).translate("welcome_") +
                      " " +
                      "Alex",
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto",
                  size: height / 40,
                ),
              ),
              SizedBox(height: height / 5),
              Container(
                child: YouAreSelector(),
              ),
              SizedBox(height: height / 15),
              DoneButton(() {}),
              SizedBox(height: height / 20),
            ],
          )),
    );
  }

  void validationFields() {
    if (_formKey.currentState.validate()) {
      print("validation success !");
    } else {
      print("not success !");
    }
  }
}
