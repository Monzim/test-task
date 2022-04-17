import 'package:flutter/material.dart';
import 'package:test_task/app/data/model/product_item_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.productItem,
  }) : super(key: key);

  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0.r),
      child: Image.network(
        productItem.thumbnail,
        fit: BoxFit.cover,
      ),
    );
  }
}
