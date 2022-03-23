import 'package:fastfood_app/AdminApp/screens/Products/products_menu.dart';
import 'package:fastfood_app/AdminApp/screens/account.dart';
import 'package:fastfood_app/AdminApp/screens/dashboard.dart';
import 'package:fastfood_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../../utils/colors.dart';

class AdminMainScreen extends StatelessWidget {
  AdminMainScreen({Key? key}) : super(key: key);
  var pages = [
    const Dashboard(),
    const ProductsMenu(),
    const AccountManagement(),
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
                  label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(logic.currentIndex.value == 1
                      ? Icons.add_to_queue_rounded
                      : Icons.add_to_queue_sharp),
                  label: "Products"),
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
