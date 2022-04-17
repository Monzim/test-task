import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:test_task/app/data/model/product_item_model.dart';
import 'package:test_task/app/global/global.dart';

class CustomGridWidget extends StatelessWidget {
  const CustomGridWidget({
    Key? key,
    required this.productItem,
    this.category = 'smartphones',
  }) : super(key: key);

  final List<ProductItem> productItem;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            category.toUpperCase() +
                '  (${productItem.where((element) => element.category == category).length})',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 10, height: 10),
        SizedBox(
          height: 200,
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            itemCount: productItem
                .where((element) => element.category == category)
                .length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Get.toNamed(Routes.DETAILS,
                    arguments: productItem
                        .where((element) => element.category == category)
                        .elementAt(index));
              },
              child: SizedBox(
                width: 100.w,
                height: 100.w,
                child: Stack(
                  children: [
                    CacheImageWidget(
                      imageUrl: productItem
                          .where((element) => element.category == category)
                          .elementAt(index)
                          .thumbnail,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              productItem
                                  .where(
                                      (element) => element.category == category)
                                  .elementAt(index)
                                  .title
                                  .toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              productItem
                                      .where((element) =>
                                          element.category == category)
                                      .elementAt(index)
                                      .price
                                      .toString() +
                                  "\$",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            staggeredTileBuilder: (index) => const StaggeredTile.count(1, 1),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
