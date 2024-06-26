import 'package:fastfood_app/screens/screens.dart';
import 'package:fastfood_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';
import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var pages = [
    const MainFoodPage(),
    const CartPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetX<NavBarController>(
      init: NavBarController(),
      initState: (_) {},
      builder: (logic) {
        return Scaffold(
          body: pages[logic.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: logic.currentIndex.value,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: Colors.grey,
            onTap: logic.updateCurrentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(logic.currentIndex.value == 0
                      ? Icons.dashboard_customize
                      : Icons.dashboard_customize_outlined),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(logic.currentIndex.value == 1
                      ? Icons.shopping_cart_rounded
                      : Icons.shopping_cart_outlined),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(logic.currentIndex.value == 2
                      ? Icons.account_circle_rounded
                      : Icons.account_circle_outlined),
                  label: "Account"),
            ],
          ),
        );
      },
    );
  }
}
