import 'package:fastfood_app/controllers/controllers.dart';
import 'package:fastfood_app/utils/colors.dart';
import 'package:fastfood_app/utils/utils.dart';
import 'package:fastfood_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularFoodDetails extends GetView<ProductDetailsPageController> {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //  top: ,
        child: Stack(
          children: [
            // Image
            Positioned(
              left: 0,
              right: 0,
              // top: Dimensions.height15,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/f6.png"),
                  ),
                  color: AppColors.yellowColor,
                ),
              ),
            ),
            // backArrow Button
            Positioned(
              top: Dimensions.height15,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget(
                    onPressed: () {
                      Get.back();
                    },
                    backgroundColor: Colors.white,
                    icon: Icons.arrow_back_ios,
                  ),
                  IconButtonWidget(
                    onPressed: () {
                      Get.back();
                    },
                    backgroundColor: Colors.white,
                    icon: Icons.shopping_cart_outlined,
                  ),
                ],
              ),
            ),
            // Product Name
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: 'Nutritious Fruit Meal',
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: "About"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                          text:
                              'Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Expandable Text
          ],
        ),
      ),
      // Add To cart Button
      bottomNavigationBar: Container(
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
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
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
                      text: controller.count.toString(),
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
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20 - 2,
                right: Dimensions.width20 - 2,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
