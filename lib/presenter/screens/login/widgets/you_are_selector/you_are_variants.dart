import 'package:board_pro/presenter/screens/login/widgets/you_are_selector/you_are_item.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class YouAreVariants extends StatefulWidget {
  @override
  State createState() {
    return YouAreVariantsState();
  }
}

class YouAreVariantsState extends State<YouAreVariants> {
  bool vegan = false;
  bool vegeterian = false;
  bool meatEater = false;
  bool none = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Align(
                alignment: Alignment.centerLeft,
                child: YouAreItem(
                    text: "vegan",
                    selected: vegan,
                    voidCallback: () {
                      setState(() {
                        vegan = true;
                        vegeterian = false;
                        meatEater = false;
                        none = false;
                      });
                    }),
              )),
              Container(
                  child: Align(
                alignment: Alignment.center,
                child: YouAreItem(
                    text: "vegetarian",
                    selected: vegeterian,
                    voidCallback: () {
                      setState(() {
                        vegan = false;
                        vegeterian = true;
                        meatEater = false;
                        none = false;
                      });
                    }),
              )),
              Container(
                  child: Align(
                alignment: Alignment.centerRight,
                child: YouAreItem(
                    text: "meat_eater",
                    selected: meatEater,
                    voidCallback: () {
                      setState(() {
                        vegan = false;
                        vegeterian = false;
                        meatEater = true;
                        none = false;
                      });
                    }),
              )),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 80),
        Container(
          child: YouAreItem(
              text: "none",
              selected: none,
              voidCallback: () {
                setState(() {
                  vegan = false;
                  vegeterian = false;
                  meatEater = false;
                  none = true;
                });
              }),
        ),
      ],
    );
  }
}
