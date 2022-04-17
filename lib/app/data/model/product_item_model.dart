import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item_model.freezed.dart';
part 'product_item_model.g.dart';

@freezed
class ProductItem with _$ProductItem {
  const factory ProductItem({
    required int id,
    required String thumbnail,
    String? title,
    String? description,
    double? price,
    int? quantity,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    List<String>? images,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}
