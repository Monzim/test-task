// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

import '../controllers/shop_controller.dart';
import 'widget/custom_grid_widget.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CAppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 8.r),
            child: Column(
              children: [
                Obx(() => CustomGridWidget(
                      productItem: controller.productItem.value,
                      category: 'smartphones',
                    )),
                Obx(() => CustomGridWidget(
                      productItem: controller.productItem.value,
                      category: 'skincare',
                    )),
                Obx(() => CustomGridWidget(
                      productItem: controller.productItem.value,
                      category: 'fragrances',
                    )),
                Obx(() => CustomGridWidget(
                      productItem: controller.productItem.value,
                      category: 'groceries',
                    )),
                Obx(() => CustomGridWidget(
                      productItem: controller.productItem.value,
                      category: 'home-decoration',
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CBottomBar());
  }
}
