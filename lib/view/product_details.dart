import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:number_selection/number_selection.dart';
import 'package:systemxecommerce/componants/cart_product_card.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/product_card.dart';
import 'package:systemxecommerce/componants/product_price.dart';
import 'package:systemxecommerce/componants/profile_menu_class.dart';
import 'package:systemxecommerce/componants/search_bar.dart';
import 'package:systemxecommerce/componants/styles.dart';
import 'package:systemxecommerce/componants/title_text.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/core/enums/device_type.dart';
import '../componants/section_title_bar.dart';
import '../core/view_models/home_view_model.dart';
import '../models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  Product product;

  ProductDetailsView(this.product);

  @override
  Widget build(BuildContext context) {
    int _currentValue = 1;

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return GetBuilder<HomeViewModel>(builder: (controller2) {
      return InfoWidget(builder: (context, deviceInfo) {
        double width = deviceInfo.width;
        double height = deviceInfo.height;
        bool isMob = deviceInfo.deviceType == DeviceType.mobile ? true : false;
        return Scaffold(
            bottomNavigationBar:
            NavigationBar(height: height * 0.07, destinations: [
              ElevatedButton(
                style: Styles.elevatedButtonStyle(
                    width: width * 0.7,
                    height: height * 0.07,
                    buttonColor: Colors.white),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Add To Favorite".tr,
                      style: Styles.txtStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Icon(
                      product.isliked ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                      size: 25.w,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                style: Styles.elevatedButtonStyle(
                    width: width * 0.3,
                    height: height * 0.07,
                    buttonColor: Colors.white),
                onPressed: () {
                  Get.bottomSheet(Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.white,
                    height: height * 0.3,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CartProductCard(screenWidth: width,
                            screenHeight: height,
                            onQuantityChanged: (){},
                            isMob: isMob,
                            product: product,
                            quantity: 1,
                          maxQuantity: 20,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.27,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText(
                                    text: 'Total:', color: Colors.grey,),
                                  TitleText(
                                      text: "${product.price} ${'EGP'.tr}",
                                      color: CustomColors.darkOrange),
                                ],
                              ),
                            ),

                            SizedBox(
                                height: height * 0.07,
                                width: width * 0.6,
                                child: ProfileMenu(fontSize: 15,
                                  width: width * 0.06,
                                  text: "Add To Cart",
                                  icon: Icon(Icons.add_shopping_cart,
                                    color: Colors.white,),
                                  press: () {},
                                  buttonColor: CustomColors.blue,
                                  titleColor: Colors.white,)),
                          ],
                        )
                      ],
                    ),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Add To Cart".tr,
                      style: Styles.txtStyle(
                          color: CustomColors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Icon(
                      Icons.add_shopping_cart,
                      color: CustomColors.blue,
                      size: 25.w,
                    )
                  ],
                ),
              ),
            ]),
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: width,
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width,
                        height: height * 0.8,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: width * 0.15,
                                    height: height * 0.3,
                                    child: ListView.separated(
                                      padding: EdgeInsets.all(5),
                                      scrollDirection: Axis.vertical,
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: EdgeInsets.all(5),
                                          width: width * 0.04,
                                          height: width * 0.1,
                                          decoration: Styles.boxDecor(5,
                                              blurColor: CustomColors.blue
                                                  .withAlpha(50)),
                                          child: CachedNetworkImage(
                                              imageUrl: product.image,
                                              fit: BoxFit.fill),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(
                                          height: height * 0.03,
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.8,
                                    height: height * 0.3,
                                    padding: EdgeInsets.all(10),
                                    child: CachedNetworkImage(
                                      imageUrl: product.image,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    product.name,
                                    style: Styles.txtStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  AutoSizeText(
                                    product.description,
                                    style: Styles.txtStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: product.discount == 0
                                      ? '${product.price}'
                                      : '${(product.price -
                                      ((product.price / 100) *
                                          product.discount)).floorToDouble()}',
                                  style: TextStyle(
                                      fontSize:
                                      ScreenUtil().setSp(isMob ? 18 : 15),
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' ${"EGP".tr}',
                                  style: TextStyle(
                                    fontSize: isMob ? 15.sp : 12.sp,
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
                                              ? (isMob ? 15 : 12)
                                              : (isMob ? 18 : 15)),
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
                                        .setSp(isMob ? 15 : 12),
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
                                        .setSp(isMob ? 15 : 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RatingBar(
                            textDirection: TextDirection.ltr,
                            itemSize: 20.w,
                            updateOnDrag: false,
                            ignoreGestures: true,
                            initialRating: product.rate,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              half: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Icon(
                                    Icons.star_half,
                                    color: Colors.amber,
                                  )),
                              empty: Icon(
                                Icons.star_border,
                                color: Colors.amber,
                              ),
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
      });
    });
  }
}
