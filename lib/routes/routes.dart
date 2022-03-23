import 'package:fastfood_app/bindings/bindings.dart';
import 'package:fastfood_app/screens/screens.dart';
import 'package:get/get.dart';

import '../AdminApp/screens/screens.dart';

var routes = [
  GetPage(
      name: '/splash',
      binding: ProductDetailPageBinding(),
      page: () => const SplashScreen()),
  GetPage(
      name: '/HomeScreen',
      binding: ProductDetailPageBinding(),
      page: () => HomeScreen()),
  GetPage(
    name: '/MainFoodPage',
    // binding: ProductDetailPageBinding(),
    page: () => const MainFoodPage(),
  ),
  GetPage(
    name: '/popularDetailsPage',
    // binding: ProductDetailPageBinding(),
    page: () => const PopularFoodDetails(),
  ),
  GetPage(
    name: '/recommendedFoodPage',
    // binding: ProductDetailPageBinding(),
    page: () => const RecommendedFoodDetails(),
  ),
  GetPage(
    name: '/cartPage',
    // binding: ProductDetailPageBinding(),
    page: () => const CartPage(),
  ),
  GetPage(
    name: '/accountPage',
    page: () => AccountPage(),
  ),
  GetPage(
    name: '/signupPage',
    page: () => SignUpPage(),
  ),
  GetPage(
    name: '/signInPage',
    transition: Transition.fade,
    page: () => SignInPage(),
  ),

  // Admin Routes
  GetPage(
    name: '/AdminMainScreen',
    page: () => AdminMainScreen(),
  ),
];
