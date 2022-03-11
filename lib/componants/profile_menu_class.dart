import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({

    required this.text,
    required this.icon,
    required this.press,
   this.fontSize=18,
    this.showArrow=true
  }) ;

final double fontSize;
  final String text;
 final Icon icon;
  final VoidCallback press;
final  bool showArrow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            showArrow? icon:Text('')  ,
            SizedBox(width: 20),
            Expanded(child: Text(text.tr,style: TextStyle(fontSize: 15.sp,fontFamily: "Tajawal",fontWeight: FontWeight.bold),)),
           showArrow? Icon(Icons.arrow_forward_ios):icon,
          ],
        ),
      ),
    );
  }
}