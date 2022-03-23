import 'package:fastfood_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';
import '../widgets/widgets.dart';

class CartPage extends GetView<ProductDetailsPageController> {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Top IconButtons arrowback,home and cat icon button
            // Positioned(
            //   left: Dimensions.width20,
            //   right: Dimensions.width20,
            //   top: 0,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButtonWidget(
            //         icon: Icons.arrow_back_ios,
            //         onPressed: () {
            //           Get.back();
            //         },
            //         iconColor: Colors.white,
            //         backgroundColor: AppColors.mainColor,
            //         iconSize: Dimensions.iconSize24,
            //       ),
            //       SizedBox(
            //         width: Dimensions.width20 * 6,
            //       ),
            //       IconButtonWidget(
            //         icon: Icons.home_outlined,
            //         onPressed: () {
            //           Get.toNamed("/MainFoodPage");
            //         },
            //         iconColor: Colors.white,
            //         backgroundColor: AppColors.mainColor,
            //         iconSize: Dimensions.iconSize24,
            //       ),
            //       IconButtonWidget(
            //         icon: Icons.shopping_cart,
            //         onPressed: () {},
            //         iconColor: Colors.white,
            //         backgroundColor: AppColors.mainColor,
            //         iconSize: Dimensions.iconSize24,
            //       ),
            //     ],
            //   ),
            // ),
            Positioned(
              // top: Dimensions.height20 * 5,
              top: 0,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: Dimensions.height20 * 5,
                      width: double.maxFinite,
                      // color: Colors.red,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(children: [
                        // Image Container
                        Container(
                          height: Dimensions.height20 * 5,
                          width: Dimensions.width20 * 6,
                          margin: EdgeInsets.only(
                              top: Dimensions.height10,
                              bottom: Dimensions.height10),
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/f2.png"),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20)),
                        ),
                        SizedBox(width: Dimensions.width10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: Dimensions.width20),
                            height: Dimensions.height20 * 5,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BigText(
                                    text: "Hi I am Big Text",
                                    color: Colors.black54,
                                  ),
                                  SmallText(text: "Spicy"),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BigText(
                                        text: "\$ 30.0",
                                        color: Colors.redAccent,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius20),
                                            color: Colors.white),
                                        child: Row(
                                          children: [
                                            IconButtonWidget(
                                              icon: Icons.remove,
                                              backgroundColor: Colors.white,
                                              iconColor: AppColors.signColor,
                                              onPressed: () {
                                                controller.countMinus();
                                              },
                                            ),
                                            SizedBox(
                                              width: Dimensions.width10 / 2,
                                            ),
                                            Obx(
                                              () => BigText(
                                                text:
                                                    controller.count.toString(),
                                              ),
                                            ),
                                            SizedBox(
                                              width: Dimensions.width10 / 2,
                                            ),
                                            IconButtonWidget(
                                              icon: Icons.add,
                                              backgroundColor: Colors.white,
                                              iconColor: AppColors.signColor,
                                              onPressed: () {
                                                controller.countPlus();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ]),
                    );
                  }),
                ),
              ),
            ),
            // CheckOut
            Positioned(
              bottom: 0,
              // top: Dimensions.height20,
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.bottomHeightBar,
                padding: EdgeInsets.only(
                  top: Dimensions.height30,
                  bottom: Dimensions.height30,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                decoration: BoxDecoration(
                    color: AppColors.buttonBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20 * 2),
                        topRight: Radius.circular(Dimensions.radius20 * 2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(
                          top: Dimensions.height20,
                          bottom: Dimensions.height20,
                          left: Dimensions.width15,
                          right: Dimensions.width15,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white),
                        child: BigText(text: "\$ 20.0")),
                    Container(
                      padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20 - 2,
                        right: Dimensions.width20 - 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                      ),
                      child: BigText(
                        text: " CheckOut",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
