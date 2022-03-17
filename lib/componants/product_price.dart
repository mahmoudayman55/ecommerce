import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductPrice extends StatelessWidget{
  Product product;
  bool isMob;
  double mobFontSize;

  ProductPrice(this.product, this.isMob, {this.mobFontSize = 18});

  @override
  Widget build(BuildContext context) {
    return                           RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: product.discount == 0
                ? '${product.price}'
                : '${(product.price - ((product.price / 100) * product.discount)).floorToDouble()}',
            style: TextStyle(
                fontSize:
                isMob ? mobFontSize.sp : (mobFontSize-3).sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' ${"EGP".tr}',
            style: TextStyle(
              fontSize: isMob ? (mobFontSize.sp-3) : (mobFontSize-6).sp,
              color: Colors.black,
            ),
          ),
          product.discount == 0
              ? TextSpan()
              : TextSpan(
            text: '\n${product.price}',
            style: TextStyle(
                decoration:
                TextDecoration.lineThrough,
                fontSize: ScreenUtil().setSp(
                    product.discount != 0
                        ? (isMob ? (mobFontSize-3) : (mobFontSize-6))
                        : (isMob ? mobFontSize : (mobFontSize-3))),
                color: product.discount != 0
                    ? Colors.black54
                    : Colors.black),
          ),
          product.discount == 0
              ? TextSpan()
              : TextSpan(
            text: ' ${"EGP".tr}',
            style: TextStyle(
              fontSize: ScreenUtil()
                  .setSp(isMob ? (mobFontSize-3) : (mobFontSize-6)),
              color: Colors.black,
            ),
          ),
          product.discount == 0
              ? TextSpan()
              : TextSpan(
            text:
            ' ${product.discount}% ' + "OFF".tr,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil()
                  .setSp(isMob ? (mobFontSize-3) : (mobFontSize-6)),
            ),
          ),
        ],
      ),
    );

  }

}