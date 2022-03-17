import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_selection/number_selection.dart';
import 'package:systemxecommerce/componants/product_price.dart';
import 'package:systemxecommerce/componants/styles.dart';
import 'package:systemxecommerce/models/product_model.dart';

import 'colors.dart';

class CartProductCard extends StatelessWidget {
  double screenWidth, screenHeight;
  Function() onQuantityChanged;
  bool isMob;
  Product product;
  int quantity,maxQuantity;

  CartProductCard(
      {
     required this.screenWidth,
     required this.screenHeight,
     required this.onQuantityChanged,
     required this.isMob,
     required this.product,
     required this.quantity ,required this.maxQuantity
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: screenWidth * 0.17,
          height: screenWidth * 0.15,
          decoration: Styles.boxDecor(15,
              offset: 15,
              blurRad: 15,
              blurColor: CustomColors.deepBlue.withAlpha(75)),
          child: CachedNetworkImage(
            imageUrl: product.image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.5,
              child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: product.name,
                    style: Styles.txtStyle(
                        fontSize: (isMob ? 13 : 10),
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  )),
            ),
            ProductPrice(
              product,
              isMob,
              mobFontSize: 15,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: screenHeight * 0.1,
              width: screenWidth * .2,
              child: NumberSelection(
                theme: NumberSelectionTheme(
                    draggableCircleColor: Colors.blue,
                    iconsColor: Colors.white,
                    numberColor: Colors.white,
                    backgroundColor: CustomColors.blue,
                    outOfConstraintsColor: Colors.red),
                initialValue: quantity,
                minValue: 1,
                maxValue: maxQuantity,
                direction: Axis.horizontal,
                withSpring: true,
                onChanged: (int value) => onQuantityChanged,
                enableOnOutOfConstraintsAnimation: true,
                onOutOfConstraints: () =>
                    print("This value is too high or too low"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
