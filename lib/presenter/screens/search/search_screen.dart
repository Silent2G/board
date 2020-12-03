import 'package:board_pro/presenter/screens/search_item/search_item_screen.dart';
import 'package:board_pro/presenter/screens/updates/widgets/close_button_widget.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  @override
  State createState() {
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: AppColors.WHITE,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 40,
                    right: MediaQuery.of(context).size.height / 40),
                child: Container(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: height / 60),
                      Container(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: CloseButtonWidget(),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchItemScreen()));
                        },
                        child: TitleText("click"),
                      ),
                      SearchInputText(
                          hint: AppLocalizations.of(context).translate("type"),
                          size: height / 50,
                          suffixIcon: Container(
                            padding: EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              "assets/images/svg/ic_search.svg",
                              color: AppColors.GRAY,
                            ),
                          )),
                    ],
                  ),
                )),
          ),
        ));
  }
}
