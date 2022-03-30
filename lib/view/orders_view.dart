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
import 'package:systemxecommerce/componants/order_card.dart';
import 'package:systemxecommerce/componants/product_card.dart';
import 'package:systemxecommerce/componants/search_bar.dart';
import 'package:systemxecommerce/componants/title_text.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/core/enums/device_type.dart';
import 'package:systemxecommerce/models/order_model.dart';

import '../componants/section_title_bar.dart';
import '../core/view_models/home_view_model.dart';
import '../models/product_model.dart';

class OrdersView extends StatelessWidget {
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
              bool isMob =
                  deviceInfo.deviceType == DeviceType.mobile ? true : false;

              return SizedBox(
                width: width,
                height: height,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return OrderCard(
                        order: OrderModel(number: 2568554563,
                            id: '22656563266',
                            date: "15-10-2020",
                            products: [
                              Product(
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
                                      "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
                            ], time: '10:50 AM'),
                        height: height * 0.25,
                        width: width * 0.8,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: height * 0.03,
                      );
                    },
                    itemCount: 3),
              );
            },
          ));
    });
  }
}
