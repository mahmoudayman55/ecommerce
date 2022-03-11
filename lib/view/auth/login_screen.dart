import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/title_text.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/view/auth/register_screen.dart';

import '../../componants/styles.dart';
import '../../core/enums/device_type.dart';
import '../../core/view_models/home_view_model.dart';

class LogInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InfoWidget(builder: (context, deviceInfo) {
      double width = deviceInfo.width;
      double height = deviceInfo.height;
      bool isMob = deviceInfo.deviceType == DeviceType.mobile ? true : false;

      return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [CustomColors.blue, Colors.white],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    stops: const [.25, .25])),
            width: width,
            height: height,
            child: GetBuilder<HomeViewModel>(
                builder: (controller) => SafeArea(
                      child: SingleChildScrollView(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              vertical: 90, horizontal: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TitleText(
                                    text: "E-Commerce",
                                    fontSize: 40,
                                    color: CustomColors.darkBlue,
                                    shadow: [
                                      Shadow(
                                          color: CustomColors.blue,
                                          blurRadius: 5)
                                    ]),
                                SizedBox(
                                  height: height * 0.06,
                                ),
                                SizedBox(
                                  width: isMob ? width * 0.9 : width * 0.7,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TitleText(
                                          text: 'Sign in'.tr,
                                          color: CustomColors.blue,
                                          fontSize: 30),
                                      TextButton(
                                          onPressed: () =>
                                              Get.to(RegisterScreen()),
                                          child: TitleText(
                                            text: "Register".tr,
                                            color: CustomColors.blue,
                                            fontSize: 15,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Container(
                                  width: isMob ? width * 0.9 : width * 0.7,
                                  alignment: Alignment.center,
                                  decoration: Styles.boxDecor(15),
                                  padding: EdgeInsets.all(15),
                                  child: Form(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          child: TextFormField(
                                            onSaved: (value) {
                                              // controller.userModel.email=value;
                                              //  controller.email=value!;
                                            },
                                            validator: (value) {
                                              // if(value==null||!EmailValidator.validate(value)){
                                              //   return 'تأكد من البريد الالكتروني';
                                              // }
                                            },
                                            decoration:
                                                Styles.textFormFieldStyle(
                                                    contentPadding:
                                                        isMob ? 15 : 35,
                                                    label: "Email".tr,
                                                    fontSize: 15,
                                                    prefixIcon: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Icon(
                                                        Icons.email,
                                                        size: 15.w,
                                                      ),
                                                    )),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        TextFormField(
                                          onSaved: (value) {
                                            // controller.userModel.password=value;
                                          },
                                          validator: (value) {
                                            if (value == null) {
                                              return 'ادخل كلمة المرور';
                                            } else if (value.length < 8) {
                                              return 'كلمة المرور غير صحيحه';
                                            }
                                          },
                                          decoration: Styles.textFormFieldStyle(
                                              contentPadding: isMob ? 15 : 35,
                                              fontSize: 15,
                                              prefixIcon: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.lock,
                                                  size: 15.w,
                                                ),
                                              ),
                                              label: "Password".tr),
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: ElevatedButton(
                                            onPressed: () {}
                                            // controller.loading.value?null: () {
                                            //   _signinKey.currentState!.save();
                                            //   if (_signinKey.currentState!
                                            //       .validate()) {
                                            //      controller.login();
                                            //     // controller
                                            //     //     .signInWithEmailAndPassword();
                                            //   }
                                            // }
                                            ,
                                            child: Text(
                                              "Sign In".tr,
                                              style: Styles.txtStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            style: Styles.elevatedButtonStyle(
                                                buttonColor: CustomColors.blue,
                                                padding: 1,
                                                width: isMob
                                                    ? width * 0.9
                                                    : width * 0.7,
                                                height: isMob
                                                    ? height * 0.05
                                                    : height * 0.06),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                Text(
                                  "-- ${"OR".tr} --",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(18),
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.darkBlue),
                                ),
                                ElevatedButton(
                                  style: Styles.elevatedButtonStyle(
                                      width: width * 0.7,
                                      height: height * 0.05,
                                      buttonColor: Colors.white),
                                  onPressed: () {
                                    //   controller.googleSignInMethod();
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Sign In With Google".tr,
                                        style: Styles.txtStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/search.png'),
                                        width: width * 0.05,
                                        height: width * 0.05,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                ElevatedButton(
                                  style: Styles.elevatedButtonStyle(
                                      width: width * 0.7,
                                      height: height * 0.05,
                                      buttonColor: Colors.blue),
                                  onPressed: () {
                                    //   controller.googleSignInMethod();
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Sign In With FaceBook".tr,
                                        style: Styles.txtStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                        size: 20.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ))),
      );
    });
  }
}
