import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/view/orders_view_controller.dart';


import '../componants/profile_menu_class.dart';
import '../componants/styles.dart';
import '../componants/ui_componant.dart';
import '../core/enums/device_type.dart';
import '../core/view_models/home_view_model.dart';
import 'auth/login_screen.dart';
import 'auth/register_screen.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return GetBuilder<HomeViewModel>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
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
                padding: const EdgeInsets.all(15.0),
                child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: width * 0.3,
                            height: width * 0.3,
                            decoration: Styles.boxDecorAll(width * 0.5,
                                color: CustomColors.blue,
                                offset: 0,
                                blurColor: Colors.white,
                                blurRad: 0),
                            child: Text(
                              'M',
                              style: Styles.txtStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 50),
                            ),
                          ),
                          ProfileMenu(
                            text: "Account",
                            icon: Icon(Icons.person,color: CustomColors.deepBlue,),
                            press: () => null,
                          ),
                          ProfileMenu(
                            text: "Orders",
                            icon: Icon(Icons.receipt_long,color: CustomColors.deepBlue,),
                            press: () => Get.to(OrdersViewController()),
                          ),

                          ProfileMenu(
                            text: "Whatsapp 🎧",
                            icon: Icon(
                              Icons.call,
                              color: Colors.green,
                            ),
                            press: () => null,
                          ),
                          // ProfileMenu(
                          //   text: "FaceBook",
                          //   icon: Icon(Icons.facebook,color: Colors.blue,),
                          //   press: () {},
                          // ),
                          ProfileMenu(
                            text: "Sign Out",
                            icon: Icon(Icons.logout,color: CustomColors.deepBlue,),
                            press: () => null,
                          ),
                          // GestureDetector(
                          //   onTap: ()=>Get.to(ProfileView(),arguments: '.')
                          //   ,
                          //   child:
                          //   Container(
                          //     color: Colors.grey.shade200,
                          //     child: Row(textBaseline: TextBaseline.alphabetic,
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //
                          //         Row(
                          //           children: [
                          //             SizedBox(
                          //                 height: height * 0.05,
                          //                 width: width*0.1,
                          //                 child: Icon(Icons.person,color: myColors.darkBlue,)
                          //             ),
                          //             SizedBox(
                          //               width: width * 0.01,
                          //             ),
                          //
                          //
                          //             Text(
                          //
                          //
                          //               'معلومات الحساب',
                          //               style: txtStyle(myColors.darkBlue),textAlign: TextAlign.left,
                          //             ),
                          //
                          //
                          //           ],
                          //         ),
                          //         // Icon(
                          //         //     Icons.login)
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          //
                          // SizedBox(height: height*0.01,),     GestureDetector(
                          //   onTap: ()=>Get.to(UserOrdersView())
                          //   ,
                          //   child:
                          //   Container(
                          //     color: Colors.grey.shade200,
                          //     child: Row(textBaseline: TextBaseline.alphabetic,
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //
                          //         Row(
                          //           children: [
                          //             SizedBox(
                          //                 height: height * 0.05,
                          //                 width: width*0.1,
                          //                 child: Icon(Icons.bookmark_border_sharp,color: myColors.darkBlue,)
                          //             ),
                          //             SizedBox(
                          //               width: width * 0.01,
                          //             ),
                          //
                          //
                          //             Text(
                          //
                          //
                          //               'طلباتي',
                          //               style: txtStyle(myColors.darkBlue),textAlign: TextAlign.left,
                          //             ),
                          //
                          //
                          //           ],
                          //         ),
                          //         // Icon(
                          //         //     Icons.login)
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          //
                          // SizedBox(height: height*0.01,),
                          //
                          // GestureDetector(
                          //   onTap: ()=>controller.signOut()
                          //   ,
                          //   child:
                          //   Container(
                          //     color: Colors.grey.shade200,
                          //     child: Row(textBaseline: TextBaseline.alphabetic,
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //
                          //         Row(
                          //           children: [
                          //             SizedBox(
                          //                 height: height * 0.05,
                          //                 width: width*0.1,
                          //                 child: Icon(Icons.logout,color: myColors.darkBlue,)
                          //             ),
                          //             SizedBox(
                          //               width: width * 0.01,
                          //             ),
                          //
                          //
                          //             Text(
                          //
                          //
                          //               'تسجيل خروج',
                          //               style: txtStyle(myColors.darkBlue),textAlign: TextAlign.left,
                          //             ),
                          //
                          //
                          //           ],
                          //         ),
                          //         // Icon(
                          //         //     Icons.login)
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          ProfileMenu(
                            text: "Sign In".tr,
                            icon: Icon(Icons.login,color: CustomColors.deepBlue,),
                            press: () => Get.to(LogInView()),
                          ),
                          ProfileMenu(
                            text: "Register ".tr,
                            icon: Icon(Icons.person_add,color: CustomColors.deepBlue,),
                            press: () => Get.to(RegisterScreen()),
                          ),

                        ],
                      )

              ),
            );
          },
        ),
      );
    });
  }
}
