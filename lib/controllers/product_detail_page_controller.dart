import 'package:get/get.dart';

class ProductDetailsPageController extends GetxController {
  var count = 1.obs;
  RxBool flag = true.obs;

  flagNotflag() {
    flag.value = !flag.value;
  }

  countPlus() {
    count++;
  }

  countMinus() {
    count != 1 ? count-- : null;
  }
}
