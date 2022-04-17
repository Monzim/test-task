import 'package:get/get.dart';
import 'package:test_task/app/data/http/get_data.dart';
import 'package:test_task/app/data/model/product_item_model.dart';
import 'package:test_task/app/modules/explore/controllers/explore_controller.dart';

class ShopController extends GetxController {
  final ExploreController exploreController = Get.find<ExploreController>();

  RxInt totalProduct = 0.obs;
  RxList<ProductItem> productItem = <ProductItem>[].obs;

  @override
  void onInit() {
    _data();
    super.onInit();
  }

  void _data() async {
    await GetData.getProduct(exploreController.client).then((value) {
      productItem.value = value.products;
      totalProduct.value = value.products.length;
    });
  }
}
