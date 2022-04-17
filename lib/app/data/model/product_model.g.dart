// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: json['totalItems'] as int?,
      skip: json['skip'] as int?,
      linmit: json['linmit'] as int?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'totalItems': instance.totalItems,
      'skip': instance.skip,
      'linmit': instance.linmit,
    };
