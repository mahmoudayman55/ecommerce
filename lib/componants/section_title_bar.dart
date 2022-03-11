import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:systemxecommerce/componants/title_text.dart';

class SectionTitleBar extends StatelessWidget {
  final double width;
  final String titleText;
  final List<Color> colors;
  final bool center;
  final double margin;
  final Color textColor;
  

  const SectionTitleBar({
    required this.width,
    required this.titleText,
    this.colors = const [Colors.deepOrange, Colors.orange],
    this.textColor = Colors.white,
    this.center = false, this.margin=0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(margin),
        alignment: center ? Alignment.center : null,
        width: width,
        decoration: BoxDecoration(
          borderRadius: center?BorderRadius.only(
              topLeft: Radius.circular(50), bottomRight: Radius.circular(50)):null,
          gradient: LinearGradient(
              colors: colors,
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        padding: const EdgeInsets.all(5.0),
        child: TitleText(

          text: titleText.tr,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: textColor,
        ));
  }
}
