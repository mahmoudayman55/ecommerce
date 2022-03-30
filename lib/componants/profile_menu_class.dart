import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:systemxecommerce/componants/colors.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({

    required this.text,
    required this.icon,
    required this.press,
     this.width=20,
    this.buttonColor=const Color(0xFFF5F6F9),
    this.titleColor= const Color.fromARGB(255, 9,35,71),
   this.fontSize=18,
    this.showArrow=true
  }) ;

final double fontSize;
final double width;
final Color buttonColor;
final Color titleColor;
  final String text;
 final Icon icon;
  final VoidCallback press;
final  bool showArrow;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: buttonColor,
      onPressed: press,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          showArrow? icon:Text('')  ,
          SizedBox(width: width),
          Expanded(child: AutoSizeText(text.tr,style: TextStyle(fontSize: fontSize.sp,color: titleColor,fontWeight: FontWeight.normal),)),
         showArrow? Icon(Icons.arrow_forward_ios,color: titleColor,size: 15.w,):icon,
        ],
      ),
    );
  }
}