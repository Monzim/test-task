import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../controllers/explore_controller.dart';
import 'widget/image_widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ExploreController>();
    return Obx(
      () => Container(
          padding: EdgeInsets.symmetric(horizontal: 5.r, vertical: 10.r),
          child: controller.isLoading.value
              ? Visibility(
                  visible: controller.isLoading.value,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Visibility(
                  visible: !controller.isLoading.value,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 3,
                    itemCount: controller.items?.products.length,
                    mainAxisSpacing: 8.0.w,
                    crossAxisSpacing: 8.0.w,
                    staggeredTileBuilder: (index) => StaggeredTile.count(
                      (index == 0)
                          ? 1
                          : (index % 5 == 0)
                              ? 2
                              : 1,
                      (index == 0)
                          ? 1
                          : (index % 5 == 0)
                              ? 2
                              : 1,
                    ),
                    itemBuilder: (context, index) => ImageWidget(
                      productItem: controller.items!.products[index],
                      cacheManager: controller.customCacheManager,
                    ),
                  ))),
      // const CBottomBar(),
    );
  }
}
