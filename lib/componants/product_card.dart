import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:systemxecommerce/componants/colors.dart';
import 'package:systemxecommerce/componants/styles.dart';
import 'package:systemxecommerce/view/product_details.dart';
import '../models/product_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double width, height;
  final bool isMob;

  ProductCard(
      {required this.product, required this.width, required this.height, required this.isMob});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.to(ProductDetailsView(product)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMob ? 10 : 20),
        child: Container(

          width: isMob
              ? width * 0.4
              : width * 0.29,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // SizedBox(height: product.isSelected ? 0 : 0),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, top: 10),
                        child: SizedBox(
                            height: height * 0.14,
                            child: CachedNetworkImage(
                              imageUrl: product.image,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            )),
                      ),
                    ),
                    RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: product.name,
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: ScreenUtil().setSp(isMob?13:10),
                              color: Colors.black),
                        )),
                Text(product.category.tr,style: Styles.txtStyle(color:CustomColors.darkOrange,fontSize: isMob?12:9,),),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: product.discount == 0
                                ? '${product.price}'
                                : '${(product.price - ((product.price / 100) * product.discount)).floorToDouble()}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(isMob?15:12),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' ${"EGP".tr}',
                            style: TextStyle(
                              fontSize: isMob?12.sp:9.sp,
                              color: Colors.black,
                            ),
                          ),
                          product.discount == 0
                              ? TextSpan()
                              : TextSpan(
                                  text: '\n${product.price}',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: ScreenUtil()
                                          .setSp(product.discount != 0 ? (isMob?12:9) : (isMob?15:12)),
                                      color: product.discount != 0
                                          ? Colors.black54
                                          : Colors.black),
                                ),
                          product.discount == 0
                              ? TextSpan()
                              : TextSpan(
                                  text: ' ${"EGP".tr}',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(isMob?12:9),
                                    color: Colors.black,
                                  ),
                                ),
                          product.discount == 0
                              ? TextSpan()
                              : TextSpan(
                                  text: ' ${product.discount}% ' + "OFF".tr,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: isMob?12.sp:9.sp,
                                  ),
                                ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox.fromSize(
                          size: Size.fromRadius(width*0.02),

                          child: const FittedBox(

                              child :Icon(
                            Icons.star,
                                color: Colors.amber,
                              ),


                          ),
                        ),
                        Text("${product.rate}",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: ScreenUtil().setSp(isMob?12:9)),),

                      ],
                    ),

                    // RatingBar.builder(tapOnlyMode: true,
                    //   initialRating: product.rate,
                    //   itemSize: width * 0.05,
                    //   minRating: 1,
                    //   direction: Axis.horizontal,
                    //   allowHalfRating: true,
                    //   itemCount: 5,
                    //   unratedColor: Colors.amber.shade100,
                    //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    //   itemBuilder: (context, _) => const Icon(
                    //     Icons.star,
                    //     color: Colors.amber,
                    //   ),
                    //   updateOnDrag: false,
                    //   onRatingUpdate: (rating) {
                    //     print(rating);
                    //   },
                    // )

                    // RatingBar(
                    //   rating: 3,
                    //   icon:const Icon(Icons.star,size:40,color: Colors.grey,),
                    //   starCount: 5,
                    //   spacing: 5.0,
                    //   size: 40,
                    //   isIndicator: false,
                    //   allowHalfRating: true,
                    //   onRatingCallback: (double value,ValueNotifier<bool> isIndicator){
                    //     print('Number of stars-->  $value');
                    //     //change the isIndicator from false  to true ,the       RatingBar cannot support touch event;
                    //     isIndicator.value=true;
                    //   },
                    //   color: Colors.amber,
                    // )
                  ],
                ),            Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(width*0.035),

                    child: FittedBox(
                      child: IconButton(
                        icon: Icon(
                          product.isliked ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
