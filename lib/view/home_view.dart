import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/product_card.dart';
import 'package:systemxecommerce/componants/search_bar.dart';
import 'package:systemxecommerce/componants/title_text.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/core/enums/device_type.dart';
import 'package:systemxecommerce/view/product_details.dart';

import '../componants/section_title_bar.dart';
import '../core/view_models/home_view_model.dart';
import '../models/product_model.dart';

//import 'package:skysoft_admin/core/view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return GetBuilder<HomeViewModel>(builder: (controller2) {
      return Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: InfoWidget(
            builder: (context, deviceInfo) {
              double width = deviceInfo.width;
              double height = deviceInfo.height;
              print("height from login screen $height");

              bool isMob =
                  deviceInfo.deviceType == DeviceType.mobile ? true : false;

              return SizedBox(
                width: width,
                height: height,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(5)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child:
                              SearchBar(height * 0.06, width * 0.7, 50, 50, () {
                            print('search');
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            width: width,
                            height: height * 0.35,
                            child: ClipRRect(
                              child: ImageSlideshow(
                                width: double.infinity,

                                height: 200,

                                initialPage: 0,

                                indicatorColor: CustomColors.darkOrange,

                                indicatorBackgroundColor: CustomColors.blue,

                          
                                children: [
                                  CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    imageUrl:
                                        'https://i.ibb.co/3m7pH9Z/649441fc-9ac4-4d4d-b6a6-1f07056c4771-CR0-0-1464-600-PT0-SX1464-V1.jpg',
                                  ),
                                  CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    imageUrl:
                                        'https://i.ibb.co/v4dQVFP/ROG-Hero-II-and-Scar-II-yugatech-ph.webp',
                                  ),
                                  CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    imageUrl:
                                        'https://i.ibb.co/PNyxC2Q/asus-rog-gaming-laptop-strix-hero-ii-gl504gm-es152t-500x500.png',
                                  ),
                                ],

                                onPageChanged: (value) {
                                  print('Page changed: $value');
                                },

                         
                                autoPlayInterval: 0,

                           
                                isLoop: true,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionTitleBar(colors: [
                              CustomColors.deepBlue,
                              CustomColors.blue
                            ], width: width, titleText: "Recommended"),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: width,
                                height: isMob ? height * 0.5 : height * 0.37,
                                child: ListView.builder(
                                    padding: const EdgeInsets.all(5),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(ProductDetailsView());
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: isMob ? 10 : 20),
                                            child: SizedBox(
                                              width: isMob
                                                  ? width * 0.4
                                                  : width * 0.29,
                                              child: ProductCard(
                                                  isMob: isMob,
                                                  width: width,
                                                  height: height,
                                                  product: Product(
                                                      discount: 0,
                                                      id: 1523885454,
                                                      rate: 3.2,
                                                      name:
                                                          "laptop dell with 32 RAM and 1T HDD with original charger",
                                                      category: "lapTops",
                                                      price: 5000,
                                                      isliked: false,
                                                      isSelected: true,
                                                      image:
                                                          "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat")),
                                            ),
                                          ),
                                        ),
                                    itemCount: 3),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, bottom: 5),
                                    child: SectionTitleBar(
                                        colors: [
                                          CustomColors.deepBlue,
                                          CustomColors.blue
                                        ],
                                        width: width * .5,
                                        titleText: "Recommended",
                                        center: true),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: SizedBox(
                                      width: width,
                                      height:
                                          isMob ? height * 0.1 : height * 0.15,
                                      child: ListView.builder(
                                          padding: EdgeInsets.all(5),
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) =>
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        isMob ? 10 : 20),
                                                child: SizedBox(
                                                  width: width * 0.2,
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        "https://i.ibb.co/7p95PDH/Headphone.png",
                                                  ),
                                                ),
                                              ),
                                          itemCount: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SectionTitleBar(colors: [
                              CustomColors.deepBlue,
                              CustomColors.blue
                            ], width: width, titleText: "Recommended"),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: width,
                                height: isMob ? height * 0.5 : height * 0.37,
                                child: ListView.builder(
                                    padding: EdgeInsets.all(5),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: isMob ? 10 : 20),
                                          child: SizedBox(
                                            width: isMob
                                                ? width * 0.4
                                                : width * 0.29,
                                            child: ProductCard(
                                                isMob: isMob,
                                                width: width,
                                                height: height,
                                                product: Product(
                                                    discount: 50,
                                                    id: 1523885454,
                                                    rate: 3.2,
                                                    name:
                                                        "laptop dell with 32 RAM and 1T HDD with original charger",
                                                    category: "lapTops",
                                                    price: 5000,
                                                    isliked: false,
                                                    isSelected: true,
                                                    image:
                                                        "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat")),
                                          ),
                                        ),
                                    itemCount: 3),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: SectionTitleBar(
                                    colors: [
                                      CustomColors.deepBlue,
                                      CustomColors.blue
                                    ],
                                    width: width * .5,
                                    titleText: "Big Sales",
                                    center: true),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: width,
                                child: GridView.count(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: isMob ? 20 : 30),
                                    shrinkWrap: true,
                                    crossAxisCount: 2,
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisSpacing:
                                        isMob ? (width * 0.07) : width * 0.03,
                                    mainAxisSpacing: width * 0.03,
                                    childAspectRatio: isMob ? 2.8 / 4.2 : 2 / 1,
                                    children: [
                                      GridTile(
                                          child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: isMob
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  AutoSizeText(
                                                    "UP To 70%",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: ScreenUtil()
                                                            .setSp(isMob
                                                                ? 15
                                                                : 12),
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  AutoSizeText(
                                                    "Don't waste the chance",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: ScreenUtil()
                                                          .setSp(
                                                              isMob ? 15 : 12),
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Container(
                                                      padding: EdgeInsets.all(
                                                          10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      isMob
                                                                          ? 15
                                                                          : 25),
                                                          color: Colors.white),
                                                      width: isMob
                                                          ? width * 0.25
                                                          : width * 0.19,
                                                      height: isMob
                                                          ? height * 0.17
                                                          : height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(isMob
                                                                    ? 15
                                                                    : 25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              )
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.2,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        AutoSizeText(
                                                          "UP To 70%",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(isMob
                                                                          ? 15
                                                                          : 12),
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        AutoSizeText(
                                                          "Don't waste the chance",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(isMob
                                                                        ? 15
                                                                        : 12),
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          color: Colors.white),
                                                      width: width * 0.19,
                                                      height: height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                isMob ? 15 : 25),
                                            gradient: LinearGradient(
                                                colors: [
                                                  CustomColors.deepBlue,
                                                  CustomColors.blue
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                stops: [0.0, 1.0],
                                                tileMode: TileMode.clamp),
                                            color: Colors.orange),
                                      )),
                                      GridTile(
                                          child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: isMob
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  AutoSizeText(
                                                    "UP To 70%",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: ScreenUtil()
                                                            .setSp(isMob
                                                                ? 15
                                                                : 12),
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  AutoSizeText(
                                                    "Don't waste the chance",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: ScreenUtil()
                                                          .setSp(
                                                              isMob ? 15 : 12),
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Container(
                                                      padding: EdgeInsets.all(
                                                          10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      isMob
                                                                          ? 15
                                                                          : 25),
                                                          color: Colors.white),
                                                      width: isMob
                                                          ? width * 0.25
                                                          : width * 0.19,
                                                      height: isMob
                                                          ? height * 0.17
                                                          : height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(isMob
                                                                    ? 15
                                                                    : 25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              )
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.2,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        AutoSizeText(
                                                          "UP To 70%",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(isMob
                                                                          ? 15
                                                                          : 12),
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        AutoSizeText(
                                                          "Don't waste the chance",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(isMob
                                                                        ? 15
                                                                        : 12),
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          color: Colors.white),
                                                      width: width * 0.19,
                                                      height: height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                isMob ? 15 : 25),
                                            gradient: LinearGradient(
                                                colors: [
                                                  CustomColors.deepBlue,
                                                  CustomColors.blue
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                stops: [0.0, 1.0],
                                                tileMode: TileMode.clamp),
                                            color: Colors.orange),
                                      )),
                                      GridTile(
                                          child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: isMob
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  AutoSizeText(
                                                    "UP To 70%",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: ScreenUtil()
                                                            .setSp(isMob
                                                                ? 15
                                                                : 12),
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  AutoSizeText(
                                                    "Don't waste the chance",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: ScreenUtil()
                                                          .setSp(
                                                              isMob ? 15 : 12),
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Container(
                                                      padding: EdgeInsets.all(
                                                          10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      isMob
                                                                          ? 15
                                                                          : 25),
                                                          color: Colors.white),
                                                      width: isMob
                                                          ? width * 0.25
                                                          : width * 0.19,
                                                      height: isMob
                                                          ? height * 0.17
                                                          : height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(isMob
                                                                    ? 15
                                                                    : 25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              )
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.2,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        AutoSizeText(
                                                          "UP To 70%",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(isMob
                                                                          ? 15
                                                                          : 12),
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        AutoSizeText(
                                                          "Don't waste the chance",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(isMob
                                                                        ? 15
                                                                        : 12),
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          color: Colors.white),
                                                      width: width * 0.19,
                                                      height: height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                isMob ? 15 : 25),
                                            gradient: LinearGradient(
                                                colors: [
                                                  CustomColors.deepBlue,
                                                  CustomColors.blue
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                stops: [0.0, 1.0],
                                                tileMode: TileMode.clamp),
                                            color: Colors.orange),
                                      )),
                                      GridTile(
                                          child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: isMob
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  AutoSizeText(
                                                    "UP To 70%",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: ScreenUtil()
                                                            .setSp(isMob
                                                                ? 15
                                                                : 12),
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  AutoSizeText(
                                                    "Don't waste the chance",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: ScreenUtil()
                                                          .setSp(
                                                              isMob ? 15 : 12),
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Container(
                                                      padding: EdgeInsets.all(
                                                          10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      isMob
                                                                          ? 15
                                                                          : 25),
                                                          color: Colors.white),
                                                      width: isMob
                                                          ? width * 0.25
                                                          : width * 0.19,
                                                      height: isMob
                                                          ? height * 0.17
                                                          : height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(isMob
                                                                    ? 15
                                                                    : 25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              )
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: width * 0.2,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        AutoSizeText(
                                                          "UP To 70%",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(isMob
                                                                          ? 15
                                                                          : 12),
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        AutoSizeText(
                                                          "Don't waste the chance",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(isMob
                                                                        ? 15
                                                                        : 12),
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          color: Colors.white),
                                                      width: width * 0.19,
                                                      height: height * 0.12,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "https://i.ibb.co/zZ4c7mH/DELL.png",
                                                          fit: BoxFit.scaleDown,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                isMob ? 15 : 25),
                                            gradient: LinearGradient(
                                                colors: [
                                                  CustomColors.deepBlue,
                                                  CustomColors.blue
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                stops: [0.0, 1.0],
                                                tileMode: TileMode.clamp),
                                            color: Colors.orange),
                                      )),
                                    ]),
                              ),
                            ),
                            SectionTitleBar(colors: [
                              CustomColors.deepBlue,
                              CustomColors.blue
                            ], width: width, titleText: "Recommended"),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: width,
                                height: isMob ? height * 0.5 : height * 0.37,
                                child: ListView.builder(
                                    padding: EdgeInsets.all(5),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: isMob ? 10 : 20),
                                          child: SizedBox(
                                            width: isMob
                                                ? width * 0.4
                                                : width * 0.29,
                                            child: ProductCard(
                                                isMob: isMob,
                                                width: width,
                                                height: height,
                                                product: Product(
                                                    discount: 50,
                                                    id: 1523885454,
                                                    rate: 3.2,
                                                    name:
                                                        "laptop dell with 32 RAM and 1T HDD with original charger",
                                                    category: "lapTops",
                                                    price: 5000,
                                                    isliked: false,
                                                    isSelected: true,
                                                    image:
                                                        "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat")),
                                          ),
                                        ),
                                    itemCount: 3),
                              ),
                            ),
                            StaggeredGrid.count(
                              crossAxisCount: isMob ? 2 : 3,
                              mainAxisSpacing: width * 0.02,
                              crossAxisSpacing: width * 0.02,
                              children: [
                                StaggeredGridTile.count(
                                  crossAxisCellCount: 2,
                                  mainAxisCellCount: 1,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                      placeholder: (context, url) => SizedBox(
                                          width: width * 0.2,
                                          height: height * 0.02,
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              color: CustomColors.blue,
                                              semanticsLabel: "loading",
                                            ),
                                          )),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                      imageUrl:
                                          "https://smhttp-ssl-73217.nexcesscdn.net/pub/media/wysiwyg/Jan_2022/Mobiletablet_ar_web.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: 1,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            "https://smhttp-ssl-73217.nexcesscdn.net/pub/media/wysiwyg/Jan_2022/chargers_ar_web_new.jpg"),
                                  ),
                                ),
                                StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: 1,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            "https://smhttp-ssl-73217.nexcesscdn.net/pub/media/wysiwyg/Jan_2022/chargers_ar_web_new.jpg"),
                                  ),
                                ),
                                StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: 1,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            "https://smhttp-ssl-73217.nexcesscdn.net/pub/media/wysiwyg/Jan_2022/chargers_ar_web_new.jpg"),
                                  ),
                                ),
                                StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: 1,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                        imageUrl:
                                            "https://smhttp-ssl-73217.nexcesscdn.net/pub/media/wysiwyg/Jan_2022/chargers_ar_web_new.jpg"),
                                  ),
                                ),
                              ],
                            ),
                            SectionTitleBar(colors: [
                              CustomColors.deepBlue,
                              CustomColors.blue
                            ], width: width, titleText: "Most Sales"),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: width,
                                height: isMob ? height * 0.5 : height * 0.37,
                                child: ListView.builder(
                                    padding: EdgeInsets.all(5),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: isMob ? 10 : 20),
                                          child: SizedBox(
                                            width: isMob
                                                ? width * 0.4
                                                : width * 0.29,
                                            child: ProductCard(
                                                isMob: isMob,
                                                width: width,
                                                height: height,
                                                product: Product(
                                                    discount: 50,
                                                    id: 1523885454,
                                                    rate: 3.2,
                                                    name:
                                                        "laptop dell with 32 RAM and 1T HDD with original charger",
                                                    category: "lapTops",
                                                    price: 5000,
                                                    isliked: false,
                                                    isSelected: true,
                                                    image:
                                                        "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat")),
                                          ),
                                        ),
                                    itemCount: 3),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  SectionTitleBar(
                                      colors: [
                                        CustomColors.deepBlue,
                                        CustomColors.blue
                                      ],
                                      width: width * .5,
                                      titleText: "Brands",
                                      center: true),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: SizedBox(
                                      width: width,
                                      height: height * 0.1,
                                      child: ListView.builder(
                                          padding: EdgeInsets.all(5),
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) =>
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        isMob ? 10 : 20),
                                                child: Container(
                                                  padding: EdgeInsets.all(
                                                      isMob ? 5 : 15),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              isMob ? 10 : 25),
                                                      border: Border.all(
                                                          color: Colors.orange,
                                                          width: 1)),
                                                  width: isMob
                                                      ? width * 0.3
                                                      : width * 0.25,
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        "https://i.ibb.co/rpGM0BR/Huawei-Logo-removebg-preview.png",
                                                  ),
                                                ),
                                              ),
                                          itemCount: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ));
    });
  }
}
