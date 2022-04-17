import 'package:get/get.dart';
import 'package:test_task/app/modules/explore/controllers/explore_controller.dart';

import '../controllers/shop_controller.dart';

class ShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopController>(() => ShopController());
    Get.lazyPut(() => ExploreController());
  }
}
