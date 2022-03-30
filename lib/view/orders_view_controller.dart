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
import 'package:systemxecommerce/view/cart_view.dart';
import 'package:systemxecommerce/view/categories_view.dart';
import 'package:systemxecommerce/view/home_view.dart';
import 'package:systemxecommerce/view/orders_view.dart';

import '../componants/section_title_bar.dart';
import '../core/view_models/home_view_model.dart';
import '../models/product_model.dart';

class OrdersViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return GetBuilder<HomeViewModel>(builder: (controller2) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(title: Text('Orders'),backgroundColor: CustomColors.blue,
              bottom: TabBar(onTap: (index){

              },tabs: [
                Tab(text: 'Completed'.tr),
                Tab(
                  text: 'Cancelled'.tr,
                ),
                Tab(text: 'Requested'.tr),
              ]),
            ),
            backgroundColor: Colors.grey.shade100,
            body:TabBarView(children: [

         OrdersView(),
         OrdersView(),
         OrdersView(),

            ],)


        ),
      );
    });
  }
}
