
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import '../../componants/colors.dart';
import '../../utils/lang_local_storage.dart';
import '../../view/categories_view.dart';
import '../../view/home_view.dart';
import '../../view/menu_view.dart';

class ControlViewModel extends GetxController{

String language='en';
  int _navigatorValue=1;
  Widget currentScreen=HomeView();
  int get navigatorValue => _navigatorValue;


  set setNavigatorValue(int value) {
    _navigatorValue = value;
  }

  Future<void> changeLanguage(String lang) async {
    LangLocalStorage localStorage=LangLocalStorage();
    if(language == lang){
      return;
    }
    else  {
      language = lang;
      localStorage.saveLanguage(lang);
      Get.updateLocale(Locale(lang));
      LangLocalStorage langLocalStorage=LangLocalStorage();
      print(await langLocalStorage.currentLanguage);

    }
    update();
  }

  Future<void> changeSelectedScreen(int navigatorValue) async {

    _navigatorValue =navigatorValue;

    switch(navigatorValue){
      case 0:
        {
          currentScreen=  CategoriesView();

          break;
        }
      case 1:
        {
          currentScreen= HomeView();

          break;
        }
      case 2:
        {
          currentScreen= MenuView();
          break;
        }
    }
    update();
  }
// tryOpenCart() async {
//   await Hive.openBox('userData');
//   if(box.isEmpty){
//     Get.defaultDialog(title: 'يجب تسجيل الدخول',content: Row(children: [
//       ElevatedButton(
//         onPressed: () {Get.offAll(LoginScreen());},
//         child: Text(
//
//           "تسجيل دخول",
//           style: new TextStyle(
//               fontFamily:'Tajawal',
//               fontSize:
//               ScreenUtil().setSp(20)),textAlign: TextAlign.center,
//         ),
//         style: buttonStyle,
//       ),SizedBox(width: 2,),
//       ElevatedButton(
//         onPressed: () {Get.offAll(RegisterScreen());},
//         child: Text(
//
//           "انشاء حساب",
//           style: new TextStyle(
//               fontFamily:'Tajawal',
//               fontSize:
//               ScreenUtil().setSp(20)),textAlign: TextAlign.center,
//         ),
//         style: buttonStyle,
//       ),
//     ],));
//     return;
//   }
//   else{
//     Get.to(CartView());
//   }
//
// }

  Widget bottomNavigation() {
    return GetBuilder<ControlViewModel>(

      init: ControlViewModel(),
      builder: (controller) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon:  Icon(
                Icons.menu,                  size: 20.w,

              ),
              activeIcon: Text(
                'Categories'.tr,
                style: TextStyle(
                    fontFamily:'Tajawal',
                    color:  CustomColors.blue,
                    fontSize: ScreenUtil().setSp(15),
                    fontWeight: FontWeight.bold),
              ),
              label: '',),

            BottomNavigationBarItem(
                icon:  Icon(

                  Icons.home_outlined,size: 20.w,
                ),
                activeIcon: Text('Home'.tr, style: TextStyle(
                    fontFamily:'Tajawal',
                    color:  CustomColors.blue,

                    fontSize: ScreenUtil().setSp(15),
                    fontWeight: FontWeight.bold)),
                label: ''),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.shopping_cart,color: myColors.darkBlue,
            //     ),
            //     activeIcon: Text('العربة', style: TextStyle(
            //         fontFamily:'Tajawal',
            //         color: MyColors().myGreen,
            //         fontSize: ScreenUtil().setSp(18),
            //         fontWeight: FontWeight.bold)),
            //     label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 20.w,
                ),
                activeIcon: Text('Account'.tr, style: TextStyle(
                    fontFamily:'Tajawal',
                    color: CustomColors.blue,

                    fontSize: ScreenUtil().setSp(15),
                    fontWeight: FontWeight.bold)),
                label: ''),

          ],

          onTap: (index) {
            controller.changeSelectedScreen(index);
          },
          currentIndex: _navigatorValue,
        );
      },
    );
  }
 // Widget navBar() {
 //    return GetBuilder<ControlViewModel>(
 //
 //      init: ControlViewModel(),
 //      builder: (controller) {
 //        return TitledBottomNavigationBar(
 //          activeColor: Colors.deepOrangeAccent,
 //            enableShadow: false,
 //            currentIndex: controller.navigatorValue, // Use this to update the Bar giving a position
 //            onTap: (index){
 //             changeSelectedScreen(index);
 //            },
 //            items: [
 //              TitledNavigationBarItem(title: Text('Home',style: TextStyle(fontSize: ScreenUtil().setSp(12)),),icon: Icons.home),
 //              TitledNavigationBarItem(title: Text('Categories',style: TextStyle(fontSize: ScreenUtil().setSp(12)),), icon: Icons.category),
 //              TitledNavigationBarItem(title: Text('orders',style: TextStyle(fontSize: ScreenUtil().setSp(12)),), icon: Icons.receipt_long),
 //              TitledNavigationBarItem(title: Text('Profile',style: TextStyle(fontSize: ScreenUtil().setSp(12)),), icon: Icons.person),
 //
 //            ]
 //        );
 //      },
 //    );
 //  }




  @override
  void onInit() async {
    super.onInit();
    LangLocalStorage langLocalStorage=LangLocalStorage();
  language = await langLocalStorage.currentLanguage ;
  Get.updateLocale(Locale(language));
  print(await langLocalStorage.currentLanguage);
  update();
  }
}