import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdatesButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset("assetName"),
    );
  }
}