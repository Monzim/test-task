import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test_task/app/data/http/get_data.dart';
import 'package:test_task/app/data/model/product_model.dart';

class ExploreController extends GetxController {
  final Client client = Client();
  final RxBool isLoading = true.obs;

  late CacheManager customCacheManager;

  Product? items;

  @override
  void onInit() {
    customCacheManager = CacheManager(
      Config(
        'TestTaskCacheKey',
        stalePeriod: const Duration(days: 3),
        maxNrOfCacheObjects: 50,
      ),
    );
    _getData();
    super.onInit();
  }

  _getData() async {
    await GetData.getProduct(client).then((value) {
      items = value;
      isLoading.value = false;
    });
  }
}
