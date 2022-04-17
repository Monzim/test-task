import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

import '../controllers/explore_controller.dart';
import 'widget/c_dialog.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    final controller = Get.find<ExploreController>();

    Future<void> showMyDialog(
      context, {
      required String name,
      address,
      imageUrl,
      avaterUrl,
      required VoidCallback onFollow,
      onOkay,
    }) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return ShowItemWidget(
            name: name,
            address: address,
            imageUrl: imageUrl,
            onFollow: onFollow,
            onOkay: onOkay,
            curtomBarierOnTapToCancel: true,
            showCustomBarier: true,
            avaterUrl: avaterUrl,
            cacheManager: controller.customCacheManager,
          );
        },
      );
    }

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
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      showMyDialog(
                        context,
                        name: controller.items!.products[index].category
                            as String,
                        address: _locale!.dhaka + ' ' + _locale.bangladesh,
                        imageUrl: controller.items!.products[index].thumbnail,
                        avaterUrl:
                            'https://cdn-icons-png.flaticon.com/512/147/147142.png',
                        onFollow: () {},
                        onOkay: () => Get.toNamed(Routes.DETAILS,
                            arguments: controller.items!.products[index]),
                      );
                    },
                    child: CacheImageWidget(
                      imageUrl: controller.items!.products[index].thumbnail,
                      cacheManager: controller.customCacheManager,
                    ),
                  ),
                ),
              ),
      ),
      // const CBottomBar(),
    );
  }
}
