import 'package:fastfood_app/bindings/bindings.dart';
import 'package:fastfood_app/screens/screens.dart';
import 'package:get/get.dart';

var routes = [
  GetPage(name: '/splash', page: () => const SplashScreen()),
  GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
  GetPage(
    name: '/MainFoodPage',
    page: () => const MainFoodPage(),
  ),
  GetPage(
    name: '/popularDetailsPage',
    binding: ProductDetailPageBinding(),
    page: () => PopularFoodDetails(),
  ),
  GetPage(
    name: '/recommendedFoodPage',
    binding: ProductDetailPageBinding(),
    page: () => RecommendedFoodDetails(),
  ),
];
