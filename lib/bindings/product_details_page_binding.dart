import 'package:fastfood_app/controllers/controllers.dart';
import 'package:get/instance_manager.dart';

class ProductDetailPageBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ProductDetailsPageController>(
      ProductDetailsPageController(),
      permanent: true,
    );
    // Get.lazyPut(
    //   () => ProductDetailsPageController(),
    // );
  }
}
