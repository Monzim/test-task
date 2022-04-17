import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test_task/app/data/http/get_data.dart';
import 'package:test_task/app/data/model/product_model.dart';

class ExploreController extends GetxController {
  final Client _client = Client();
  final RxBool isLoading = true.obs;
  Product? items;

  @override
  void onInit() {
    _getData();
    super.onInit();
  }

  _getData() async {
    GetData.getProduct(_client).then((value) {
      isLoading.value = false;
      items = value;
    });
  }
}
