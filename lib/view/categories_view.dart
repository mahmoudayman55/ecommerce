import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/product_card.dart';
import 'package:systemxecommerce/componants/search_bar.dart';
import 'package:systemxecommerce/componants/title_text.dart';

import '../core/view_models/home_view_model.dart';
import '../models/product_model.dart';

//import 'package:skysoft_admin/core/view_model/home_view_model.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder<HomeViewModel>(builder: (controller2) {
      return SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: LayoutBuilder(
            builder: (context, constrains) {
              double height = constrains.maxHeight;
              double width = constrains.maxWidth;
              return Scaffold(
                  backgroundColor: Colors.white,
                  body: SingleChildScrollView(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.white,
                            width: width * 0.25,
                            height: height,
                            child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) => Container(
                                      margin: index == 2
                                          ? EdgeInsets.all(10)
                                          : null,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: index == 2
                                            ? BorderRadius.circular(5)
                                            : null,
                                        // border: index == 2 ? Border.all(color: Colors.black):null,

                                        color: index == 2
                                            ?CustomColors.blue
                                            : Colors.grey.shade50,
                                      ),
                                      height: index != 2
                                          ? height * 0.1
                                          : height * 0.06,
                                      child: TitleText(
                                        text: "category $index",
                                        color: index == 2
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: index == 2 ? 13 : 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            width: width * 0.75,
                            height: height,
                            child: Column(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 3.0),
                                  child: ExpansionTile(initiallyExpanded: false,
                                      trailing: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 20.w,
                                      ),
                                      onExpansionChanged: (w) {
                                        print(w);
                                      },
                                      collapsedTextColor: CustomColors.deepBlue,
                                      backgroundColor: Colors.white,
                                      collapsedBackgroundColor: Colors.white,
                                      textColor: CustomColors.blue,
                                      iconColor: CustomColors.blue,
                                      title: Text(
                                        'Nasted Category 1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.sp),
                                      ),
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          width: width,
                                          child: GridView.count(padding: EdgeInsets.all(10),
                                              shrinkWrap: true,
                                              crossAxisCount: 4,

                                              crossAxisSpacing: 2,
                                              children: <String>[
                                                "https://i.ibb.co/c28QWQZ/m1.png",
                                                "https://i.ibb.co/HTLbZk0/keyboard.png",
                                                "https://i.ibb.co/znV2kYH/PS5.png",
                                                "https://i.ibb.co/zZ4c7mH/DELL.png"
                                                    ""
                                              ]
                                                  .map((String url) => GridTile(
                                                        child: Column(

                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              width: width * 0.1,


                                                              child:
                                                                  CachedNetworkImage(

                                                                imageUrl: url,height: height*0.04,
                                                              ),
                                                            ),
                                                            AutoSizeText(
                                                              "category name",
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      ScreenUtil()
                                                                          .setSp(
                                                                              5)),
                                                            )
                                                          ],
                                                        ),
                                                      ))
                                                  .toList()),
                                        ),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 3.0),
                                  child: ExpansionTile(
                                      trailing: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 20.w,
                                      ),
                                      collapsedTextColor: CustomColors.deepBlue,
                                      backgroundColor: Colors.white,
                                      collapsedBackgroundColor: Colors.white,
                                      textColor: CustomColors.blue,
                                      iconColor: CustomColors.blue,
                                      onExpansionChanged: (c){

                                      },
                                      title: Text(
                                        'Nasted Category 2',
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          width: width,
                                          child: GridView.count(
                                              shrinkWrap: true,
                                              crossAxisCount: 4,
                                              padding: EdgeInsets.all(5),
                                              crossAxisSpacing: width*0.01,
                                              mainAxisSpacing: height * 0.01,
                                              children: <String>[
                                                "https://i.ibb.co/c28QWQZ/m1.png",
                                                "https://i.ibb.co/HTLbZk0/keyboard.png",
                                                "https://i.ibb.co/znV2kYH/PS5.png",
                                                "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                "https://i.ibb.co/znV2kYH/PS5.png",
                                                "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                "https://i.ibb.co/HTLbZk0/keyboard.png",
                                                "https://i.ibb.co/c28QWQZ/m1.png",
                                              ]
                                                  .map((String url) => GridTile(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              width: width * 0.1,
                                                              child:
                                                                  CachedNetworkImage(
                                                                    imageUrl: url,height: height*0.04,
                                                              ),
                                                            ),
                                                            AutoSizeText(
                                                              "category name",
                                                              textAlign: TextAlign
                                                                  .center,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      ScreenUtil()
                                                                          .setSp(
                                                                              8)),
                                                            )
                                                          ],
                                                        ),
                                                      ))
                                                  .toList()),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )));
            },
          ));
    });
  }
}
