// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductItem _$$_ProductItemFromJson(Map<String, dynamic> json) =>
    _$_ProductItem(
      id: json['id'] as int,
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      stock: json['stock'] as int?,
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductItemToJson(_$_ProductItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'images': instance.images,
    };
