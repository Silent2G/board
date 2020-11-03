import 'package:board_pro/presenter/screens/shop/widgets/shop_item.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  State createState() {
    return ShopState();
  }
}

class ShopState extends State<Shop> {
  List<ShopItem> list;

  @override
  void initState() {
    list = createData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.BLUE_GRADIENT_DARK, AppColors.BLUE_GRADIENT_LIGHT],
        ),
      ),
      child: SafeArea(
          child: Container(
        child: Padding(
            padding: EdgeInsets.only(left: height / 40, right: height / 40),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/png/board_scaffold.png",
                      width: width * 0.5,
                      height: height / 12,
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return list[index];
                          }),
                    ),
                  ),
                ],
              ),
            )),
      )),
    )));
  }

  List<ShopItem> createData() {
    List<ShopItem> list;
    list = [
      ShopItem(
          onPressed: () {
            print("plastic_yellow");
          },
          title: "plastic",
          path: "assets/images/png/yellow_board.png"),
      ShopItem(
          onPressed: () {
            print("wooden");
          },
          title: "wooden",
          path: "assets/images/png/wooden_board.png"),
      ShopItem(
          onPressed: () {
            print("plastic_blue");
          },
          title: "plastic",
          path: "assets/images/png/blue_board.png"),
      ShopItem(
          onPressed: () {
            print("plastic_yellow");
          },
          title: "plastic",
          path: "assets/images/png/yellow_board.png"),
      ShopItem(
          onPressed: () {
            print("wooden");
          },
          title: "wooden",
          path: "assets/images/png/wooden_board.png"),
      ShopItem(
          onPressed: () {
            print("plastic_blue");
          },
          title: "plastic",
          path: "assets/images/png/blue_board.png"),
    ];
    return list;
  }
}
