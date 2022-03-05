import 'package:fastfood_app/controllers/controllers.dart';
import 'package:get/instance_manager.dart';

class ProductDetailPageBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProductDetailsPageController());
  }
}
