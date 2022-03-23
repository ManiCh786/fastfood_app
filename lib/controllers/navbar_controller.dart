import 'package:get/get.dart';

class NavBarController extends GetxController {
  var currentIndex = 0.obs;

  updateCurrentIndex(int index) {
    currentIndex.value = index;
    //  update();
  }
}
