// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _ProductModel call(
      {required List<ProductItem> products,
      int? totalItems,
      int? skip,
      int? linmit}) {
    return _ProductModel(
      products: products,
      totalItems: totalItems,
      skip: skip,
      linmit: linmit,
    );
  }

  Product fromJson(Map<String, Object?> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  List<ProductItem> get products => throw _privateConstructorUsedError;
  int? get totalItems => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get linmit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {List<ProductItem> products, int? totalItems, int? skip, int? linmit});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? totalItems = freezed,
    Object? skip = freezed,
    Object? linmit = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      linmit: linmit == freezed
          ? _value.linmit
          : linmit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductItem> products, int? totalItems, int? skip, int? linmit});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? products = freezed,
    Object? totalItems = freezed,
    Object? skip = freezed,
    Object? linmit = freezed,
  }) {
    return _then(_ProductModel(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      linmit: linmit == freezed
          ? _value.linmit
          : linmit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {required this.products, this.totalItems, this.skip, this.linmit});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final List<ProductItem> products;
  @override
  final int? totalItems;
  @override
  final int? skip;
  @override
  final int? linmit;

  @override
  String toString() {
    return 'Product(products: $products, totalItems: $totalItems, skip: $skip, linmit: $linmit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.totalItems, totalItems) &&
            const DeepCollectionEquality().equals(other.skip, skip) &&
            const DeepCollectionEquality().equals(other.linmit, linmit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(totalItems),
      const DeepCollectionEquality().hash(skip),
      const DeepCollectionEquality().hash(linmit));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements Product {
  const factory _ProductModel(
      {required List<ProductItem> products,
      int? totalItems,
      int? skip,
      int? linmit}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  List<ProductItem> get products;
  @override
  int? get totalItems;
  @override
  int? get skip;
  @override
  int? get linmit;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
