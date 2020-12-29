import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class PickerPair extends StatefulWidget {
  final String text;

  // final Function function;
  final Color color;
  final String tag;

  PickerPair({this.text, this.color, this.tag});

  @override
  State createState() {
    return PickerPairState();
  }

}

class PickerPairState extends State<PickerPair> {

  // create some values
  Color pickerColor;
  Color currentColor;

  @override
  void initState() {
    pickerColor = widget.color;
    currentColor = widget.color;
    super.initState();
  }

  // ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TitleText(
              AppLocalizations.of(context).translate(widget.text),
              textColor: AppColors.BLACK,
              size: height / 50,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
              child: SizedBox(
            width: height / 25,
            height: height / 25,
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: AlertDialog(
                      title: TitleText(
                        'Pick a color!',
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        size: height / 60,
                      ),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: pickerColor,
                          onColorChanged: changeColor,
                          enableAlpha: false,
                          showLabel: true,
                          pickerAreaHeightPercent: 0.8,
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: TitleText(
                            'Got it',
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            size: height / 60,
                          ),
                          onPressed: () {
                            setState(() => currentColor = pickerColor);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ));
              },
              backgroundColor: pickerColor,
              heroTag: widget.tag,
            ),
          ))
        ],
      ),
    );
  }
}
