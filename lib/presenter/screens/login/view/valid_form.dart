import 'package:board_pro/presenter/screens/login/view/email_field.dart';
import 'package:board_pro/presenter/screens/login/view/login_fit_bit_button.dart';
import 'package:board_pro/presenter/screens/login/view/name_field.dart';
import 'package:board_pro/presenter/screens/login/view/sign_up_widget.dart';
import 'package:board_pro/presenter/screens/login/view/welcome_widget.dart';
import 'package:board_pro/presenter/screens/login/view/you_are_selector/you_are_selector.dart';
import 'package:flutter/material.dart';

import 'done_button.dart';
import 'logo.dart';

class SignUpValidForm extends StatefulWidget {
  @override
  State createState() {
    return SignUpValidFormState();
  }
}

class SignUpValidFormState extends State<SignUpValidForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Container(
                child: Logo(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                child: WelcomeWidget(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                child: LoginFitBitButton(() {
                  validationFields();
                }),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                child: SignUpWidget(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                child: EditNameWidget("your_name"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                child: EmailWidget("email"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                child: YouAreSelector(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              DoneButton(() {}),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
            ],
          )),
    );
  }

  void validationFields() {
    if (_formKey.currentState.validate()) {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => SecondStep()));
      print("validation success !");
    } else {
      print("not success !");
    }
  }

}
