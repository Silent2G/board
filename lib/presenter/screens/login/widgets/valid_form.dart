import 'package:board_pro/presenter/blocks/login_block.dart';
import 'package:board_pro/presenter/screens/home/home.dart';
import 'package:board_pro/presenter/screens/login/widgets/sign_up_widget.dart';
import 'package:board_pro/presenter/screens/login/widgets/welcome_widget.dart';
import 'package:board_pro/presenter/screens/login/widgets/you_are_selector/you_are_selector.dart';
import 'package:board_pro/presenter/screens/welcome_user/welcome_user.dart';
import 'package:flutter/material.dart';

import 'done_button.dart';
import 'email_field.dart';
import 'login_fit_bit_button.dart';
import 'logo.dart';
import 'name_field.dart';

class SignUpValidForm extends StatefulWidget {
  @override
  State createState() {
    return SignUpValidFormState();
  }
}

class SignUpValidFormState extends State<SignUpValidForm> {
  final _formKey = GlobalKey<FormState>();
  LoginBlock _loginBlock;
  TextEditingController nameController;
  TextEditingController emailController;

  @override
  void initState() {
    _loginBlock = LoginBlock();
    nameController = TextEditingController();
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _loginBlock.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final node = FocusScope.of(context);
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
                child: WelcomeWidget(),
              ),
              SizedBox(height: height / 25),
              Container(
                child: LoginFitBitButton(() {
                  validationFields();
                }),
              ),
              SizedBox(height: height / 35),
              Container(
                child: SignUpWidget(),
              ),
              SizedBox(height: height / 35),
              Container(
                child: EditNameWidget(
                  controller: nameController,
                  hintValue: "your_name",
                  node: node,
                ),
              ),
              SizedBox(height: height / 45),
              Container(
                child: EmailWidget(
                  hintValue: "email",
                  node: node,
                ),
              ),
              SizedBox(height: height / 25),
              Container(
                child: YouAreSelector(),
              ),
              SizedBox(height: height / 10),
              DoneButton(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
              SizedBox(height: height / 20),
            ],
          )),
    );
  }

  void validationFields() {
    if (_formKey.currentState.validate()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeUser()));
      print("validation success !");
    } else {
      print("not success !");
    }
  }
}
