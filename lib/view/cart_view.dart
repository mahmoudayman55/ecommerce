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
import 'package:systemxecommerce/componants/cart_product_card.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/product_card.dart';
import 'package:systemxecommerce/componants/search_bar.dart';
import 'package:systemxecommerce/componants/styles.dart';
import 'package:systemxecommerce/componants/title_text.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/core/enums/device_type.dart';

import '../componants/profile_menu_class.dart';
import '../componants/section_title_bar.dart';
import '../core/view_models/home_view_model.dart';
import '../models/product_model.dart';

class CartView extends StatelessWidget {
  List<Product> cartProducts = [
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 50,
        id: 1523885454,
        rate: 3.2,
        description:
            "laptop dell with 32 RAM and 1T HDD with original chalaptop dell with 32 RAM and 1T HDD wi"
            "th original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell wit"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "DD with original chargerlaptop dell with 32 RAM and 1T HDD with original "
            "chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerrgerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original charger",
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 50,
        id: 1523885454,
        rate: 3.2,
        description:
            "laptop dell with 32 RAM and 1T HDD with original chalaptop dell with 32 RAM and 1T HDD wi"
            "th original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell wit"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "DD with original chargerlaptop dell with 32 RAM and 1T HDD with original "
            "chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerrgerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original charger",
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 0,
        id: 1523885454,
        rate: 3.2,
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 50,
        id: 1523885454,
        rate: 3.2,
        description:
            "laptop dell with 32 RAM and 1T HDD with original chalaptop dell with 32 RAM and 1T HDD wi"
            "th original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell wit"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "DD with original chargerlaptop dell with 32 RAM and 1T HDD with original "
            "chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerrgerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original charger",
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 50,
        id: 1523885454,
        rate: 3.2,
        description:
            "laptop dell with 32 RAM and 1T HDD with original chalaptop dell with 32 RAM and 1T HDD wi"
            "th original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell wit"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "DD with original chargerlaptop dell with 32 RAM and 1T HDD with original "
            "chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerrgerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original charger",
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
    Product(
        discount: 50,
        id: 1523885454,
        rate: 3.2,
        description:
            "laptop dell with 32 RAM and 1T HDD with original chalaptop dell with 32 RAM and 1T HDD wi"
            "th original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell wit"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "h 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T H"
            "DD with original chargerlaptop dell with 32 RAM and 1T HDD with original "
            "chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerrgerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original chargerlaptop dell with 32 RAM and 1T HDD with original charger",
        name: "laptop dell with 32 RAM and 1T HDD with original charger",
        category: "lapTops",
        price: 5000,
        isliked: false,
        isSelected: true,
        image:
            "https://hackster.imgix.net/uploads/attachments/962786/1_iOi5U4IcMCkZ1AXZMjkDlQ.png?auto=compress%2Cformat"),
  ];

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
              bool isMob =
                  deviceInfo.deviceType == DeviceType.mobile ? true : false;

              return SizedBox(
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: ListView.separated(
                            itemBuilder: (context, i) => CartProductCard(
                                  isMob: isMob,
                                  maxQuantity: 20,
                                  onQuantityChanged: () {},
                                  product: cartProducts[i],
                                  screenHeight: height,
                                  quantity: 1,
                                  screenWidth: width,
                                ),
                            separatorBuilder: (context, i) => SizedBox(
                                  height: height * 0.03,
                                ),
                            itemCount: cartProducts.length),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleText(
                                text: '${"Discount".tr}:',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              TitleText(
                                  text: "${0} ${'EGP'.tr}",
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleText(
                                text: '${"Shipping".tr}:',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              TitleText(
                                  text: "${50} ${'EGP'.tr}",
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TitleText(
                                text: '${"Total".tr}:',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              TitleText(
                                  fontSize: 15,
                                  text: "${5500} ${'EGP'.tr}",
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blue),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                    width: width * 0.3,
                                    height: height * 0.07,
                                    child: ProfileMenu(
                                      text: "Coupon",
                                      icon: Icon(
                                        Icons.add_to_photos_rounded,
                                        color: Colors.white,size: 15.w,
                                      ),
                                      press: () => Get.bottomSheet(Container()),
                                      fontSize: 15,
                                      titleColor: Colors.white,
                                      buttonColor: CustomColors.blue,
                                      width: 1,
                                      showArrow: false,
                                    )),
                                SizedBox(
                                    height: height * 0.07,
                                    width: width * 0.5,
                                    child: ProfileMenu(
                                      fontSize: 15,
                                      width: width * 0.06,
                                      text: "${"CheckOut".tr}",
                                      icon: Icon(
                                        Icons.payment,size: 15.w,
                                        color: Colors.white,
                                      ),
                                      press: () {},
                                      buttonColor: CustomColors.blue,
                                      titleColor: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ));
    });
  }
}
