import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

import '../controllers/explore_controller.dart';
import 'product_view.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CAppBar(),
      body: ProductList(),
      bottomNavigationBar: CBottomBar(),
    );
  }
}
