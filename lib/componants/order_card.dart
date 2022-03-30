import 'package:flutter/services.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/profile_menu_class.dart';
import 'package:systemxecommerce/componants/styles.dart';
import 'package:systemxecommerce/models/order_model.dart';

class OrderCard extends StatelessWidget {
  double width, height;
  OrderModel order;

  OrderCard({required this.width, required this.height, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: width,
      height: height,
      decoration: Styles.boxDecorAll(10),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onLongPress: (){
                Clipboard.setData(ClipboardData(text: "${order.number}"));
                Get.snackbar('', "copped to clipboard".tr,snackPosition: SnackPosition.BOTTOM);

              },
                child: Text(
                  "${"Order".tr}  #${order.number}",
                  style:
                      Styles.txtStyle(color: CustomColors.darkBlue, fontSize: 15),
                ),
              ),
              Text(
                "${order.date}",
                style: Styles.txtStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "${"Quantity".tr}:   ",
                    style: Styles.txtStyle(color: Colors.grey, fontSize: 15)),
                TextSpan(
                    text: "${order.products.length}",
                    style: Styles.txtStyle(
                        color: CustomColors.deepBlue, fontSize: 15)),
              ])),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "${"Total".tr}:   ",
                    style: Styles.txtStyle(color: Colors.grey, fontSize: 15)),
                TextSpan(
                    text: "${5000} ${"EGP".tr}",
                    style: Styles.txtStyle(
                        color: CustomColors.deepBlue, fontSize: 15)),
              ])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: width*0.4,
                child: ProfileMenu(width: width*0.05,
                  text: "Details".tr,fontSize: 12,
                  icon: Icon(Icons.more,color: Colors.white,size: 15.w,),titleColor: Colors.white,
                  press: () {},
                  buttonColor: CustomColors.blue,
                ),
              ),
              Text("Delivered".tr,style: Styles.txtStyle(color: Colors.lightGreen,fontSize: 15,),)
            ],
          ),
        ],
      ),
    );
  }
}
