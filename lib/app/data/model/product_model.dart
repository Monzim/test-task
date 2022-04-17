import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_item_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required List<ProductItem> products,
    int? totalItems,
    int? skip,
    int? linmit,
  }) = _ProductModel;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
