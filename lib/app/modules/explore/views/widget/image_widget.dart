import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:test_task/app/data/model/product_item_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.productItem,
    required this.cacheManager,
  }) : super(key: key);

  final ProductItem productItem;
  final CacheManager cacheManager;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0.r),
      child: CachedNetworkImage(
        key: UniqueKey(),
        cacheManager: cacheManager,
        imageUrl: productItem.thumbnail,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.grey,
            Color.fromARGB(255, 226, 225, 220),
          ])),
        ),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    );
  }
}
