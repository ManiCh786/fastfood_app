import '/controllers/controllers.dart';
import '/utils/colors.dart';
import '/utils/dimesions.dart';
import '/widgets/big_text.dart';
import '/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetails extends GetView<ProductDetailsPageController> {
  const RecommendedFoodDetails({Key? key}) : super(key: key);
// 4:32:16
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 70,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget(
                    icon: Icons.clear,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  IconButtonWidget(
                    icon: Icons.shopping_cart_outlined,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20),
                      ),
                    ),
                    child: Center(
                      child: BigText(
                        size: Dimensions.font26,
                        text: "Chinease Real Makroni",
                      ),
                    )),
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/f4.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(8.0),
                child: ExpandableTextWidget(
                  firstHalfLength: 1500,
                  text:
                      'Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.Just look at those lovely layers. It’s all about steak mince, pastrami, emmental, sauerkraut and spicy horseradish sauce for this beast of a burger.Make our homemade cheeseburger (complete with DIY burger sauce), tucked inside an oh-so-handy taco and topped with pink pickled onions for a fun entertaining idea.Korean gochujang pasta adds a chilli kick to these beef burgers, served with pickled Lebanese cucumbers and shredded cabbage for extra crunch.Pan-fried homemade beef patties topped with oozy cheddar and a simple beetroot relish make for a quick midweek meal. Click here for more quick and easy meals.',
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(Dimensions.width20,
                  Dimensions.height10, Dimensions.width20, Dimensions.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget(
                    icon: Icons.remove,
                    iconSize: Dimensions.iconSize24,
                    onPressed: () {
                      controller.countMinus();
                    },
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Obx(
                    () => BigText(
                      text: "\12.88 " + " x " + controller.count.toString(),
                      color: AppColors.mainBlackColor,
                      size: Dimensions.font26,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  IconButtonWidget(
                    icon: Icons.add,
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    onPressed: () {
                      controller.countPlus();
                    },
                  ),
                ],
              ),
            ),
            Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
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
                      text: " Add to cart",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// 5:05:10 Start from here
