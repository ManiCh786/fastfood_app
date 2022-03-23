import 'package:fastfood_app/utils/utils.dart';
import 'package:fastfood_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.offAllNamed('/signInPage'));
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Dimensions.height45 * 4),
          Container(
            height: Dimensions.height45 * 4,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/logo.png")),
            ),
          ),
          SizedBox(height: Dimensions.height45),
          BigText(
              text: "FastFood ",
              size: Dimensions.font20 * 2,
              color: AppColors.mainColor),
        ],
      ),
    );
  }
}
