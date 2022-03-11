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
import 'package:systemxecommerce/componants/styles.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/core/enums/device_type.dart';
import 'package:systemxecommerce/view/auth/login_screen.dart';
import 'package:systemxecommerce/view/auth/register_screen.dart';

import '../componants/profile_menu_class.dart';
import '../core/view_models/home_view_model.dart';

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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: controller.email != null
                      ? Column(
                          children: [
                            ProfileMenu(
                              text: "Sign In".tr,
                              icon: Icon(Icons.login),
                              press: () => Get.to(LogInView()),
                            ),
                            // GestureDetector(
                            //   onTap: ()=>Get.to(LoginScreen()),
                            //   child:
                            //   Container(
                            //     color: Colors.grey.shade200,
                            //     child: Row(textBaseline: TextBaseline.alphabetic,
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         Row(
                            //           children: [
                            //             SizedBox(
                            //               height: height * 0.05,
                            //               width: width*0.1,
                            //               child: Icon(Icons.login,color: myColors.darkBlue,)
                            //             ),
                            //             SizedBox(
                            //               width: width * 0.01,
                            //             ),
                            //
                            //
                            //             Text(
                            //
                            //
                            //                   'تسجيل دخول',
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
                            SizedBox(
                              height: height * 0.01,
                            ),
                            ProfileMenu(
                              text: "Register ".tr,
                              icon: Icon(Icons.person_add),
                              press: () => Get.to(RegisterScreen()),
                            ),
                            // GestureDetector(
                            //   onTap: ()=>Get.to(RegisterScreen())
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
                            //               height: height * 0.05,
                            //               width: width*0.1,
                            //               child: Icon(Icons.person_add,color: myColors.darkBlue,)
                            //             ),
                            //             SizedBox(
                            //               width: width * 0.01,
                            //             ),
                            //
                            //
                            //             Text(
                            //
                            //
                            //                   'انشاء حساب',
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
                          ],
                        )
                      : Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: width * 0.3,
                              height: width * 0.3,
                              decoration: Styles.boxDecorAll(width * 0.5,
                                  color: Colors.deepOrangeAccent,
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
                            SingleChildScrollView(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  ProfileMenu(
                                    text: "Account",
                                    icon: Icon(Icons.person),
                                    press: () => null,
                                  ),
                                  ProfileMenu(
                                    text: "Orders",
                                    icon: Icon(Icons.receipt_long),
                                    press: () => null,
                                  ),

                                  ProfileMenu(
                                    text: "Whatsapp",
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
                                    icon: Icon(Icons.logout),
                                    press: () => null,
                                  ),
                                ],
                              ),
                            )
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
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
