// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
class _$ProductItemTearOff {
  const _$ProductItemTearOff();

  _ProductItem call(
      {required int id,
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
      List<String>? images}) {
    return _ProductItem(
      id: id,
      thumbnail: thumbnail,
      title: title,
      description: description,
      price: price,
      quantity: quantity,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      brand: brand,
      category: category,
      images: images,
    );
  }

  ProductItem fromJson(Map<String, Object?> json) {
    return ProductItem.fromJson(json);
  }
}

/// @nodoc
const $ProductItem = _$ProductItemTearOff();

/// @nodoc
mixin _$ProductItem {
  int get id => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get discountPercentage => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String thumbnail,
      String? title,
      String? description,
      double? price,
      int? quantity,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      List<String>? images});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res> implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

  final ProductItem _value;
  // ignore: unused_field
  final $Res Function(ProductItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductItemCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$ProductItemCopyWith(
          _ProductItem value, $Res Function(_ProductItem) then) =
      __$ProductItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String thumbnail,
      String? title,
      String? description,
      double? price,
      int? quantity,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      List<String>? images});
}

/// @nodoc
class __$ProductItemCopyWithImpl<$Res> extends _$ProductItemCopyWithImpl<$Res>
    implements _$ProductItemCopyWith<$Res> {
  __$ProductItemCopyWithImpl(
      _ProductItem _value, $Res Function(_ProductItem) _then)
      : super(_value, (v) => _then(v as _ProductItem));

  @override
  _ProductItem get _value => super._value as _ProductItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? images = freezed,
  }) {
    return _then(_ProductItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductItem implements _ProductItem {
  const _$_ProductItem(
      {required this.id,
      required this.thumbnail,
      this.title,
      this.description,
      this.price,
      this.quantity,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.images});

  factory _$_ProductItem.fromJson(Map<String, dynamic> json) =>
      _$$_ProductItemFromJson(json);

  @override
  final int id;
  @override
  final String thumbnail;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final double? discountPercentage;
  @override
  final double? rating;
  @override
  final int? stock;
  @override
  final String? brand;
  @override
  final String? category;
  @override
  final List<String>? images;

  @override
  String toString() {
    return 'ProductItem(id: $id, thumbnail: $thumbnail, title: $title, description: $description, price: $price, quantity: $quantity, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.discountPercentage, discountPercentage) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(discountPercentage),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(stock),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$ProductItemCopyWith<_ProductItem> get copyWith =>
      __$ProductItemCopyWithImpl<_ProductItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductItemToJson(this);
  }
}

abstract class _ProductItem implements ProductItem {
  const factory _ProductItem(
      {required int id,
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
      List<String>? images}) = _$_ProductItem;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$_ProductItem.fromJson;

  @override
  int get id;
  @override
  String get thumbnail;
  @override
  String? get title;
  @override
  String? get description;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  double? get discountPercentage;
  @override
  double? get rating;
  @override
  int? get stock;
  @override
  String? get brand;
  @override
  String? get category;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$ProductItemCopyWith<_ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}
