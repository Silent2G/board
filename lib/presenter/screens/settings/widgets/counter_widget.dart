import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final int initValue;

  CounterWidget({@required this.initValue});

  @override
  State createState() {
    return CounterWidgetState();
  }
}

class CounterWidgetState extends State<CounterWidget> {
  int counter;

  @override
  void initState() {
    counter = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: [
          Container(
              child: IconButton(
            icon: Icon(Icons.add, color: AppColors.BLACK),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: () {
              setState(() {
                if (counter < 99) {
                  counter = counter + 1;
                }
              });
            },
          )),
          SizedBox(width: 5),
          Container(
            child: TitleText(
              counter.toString(),
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              textColor: AppColors.BLACK,
              size: height / 50,
            ),
          ),
          SizedBox(width: 5),
          Container(
              child: IconButton(
            icon: Icon(Icons.remove, color: AppColors.BLACK),
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter = counter - 1;
                }
              });
            },
          ))
        ],
      ),
    );
  }
}
