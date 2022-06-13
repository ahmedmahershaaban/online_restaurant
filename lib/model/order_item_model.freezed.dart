// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) {
  return _OrderItemModel.fromJson(json);
}

/// @nodoc
class _$OrderItemModelTearOff {
  const _$OrderItemModelTearOff();

  _OrderItemModel call({required FoodModel foodModel, required int counter}) {
    return _OrderItemModel(
      foodModel: foodModel,
      counter: counter,
    );
  }

  OrderItemModel fromJson(Map<String, Object?> json) {
    return OrderItemModel.fromJson(json);
  }
}

/// @nodoc
const $OrderItemModel = _$OrderItemModelTearOff();

/// @nodoc
mixin _$OrderItemModel {
  FoodModel get foodModel => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) then) =
      _$OrderItemModelCopyWithImpl<$Res>;
  $Res call({FoodModel foodModel, int counter});

  $FoodModelCopyWith<$Res> get foodModel;
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._value, this._then);

  final OrderItemModel _value;
  // ignore: unused_field
  final $Res Function(OrderItemModel) _then;

  @override
  $Res call({
    Object? foodModel = freezed,
    Object? counter = freezed,
  }) {
    return _then(_value.copyWith(
      foodModel: foodModel == freezed
          ? _value.foodModel
          : foodModel // ignore: cast_nullable_to_non_nullable
              as FoodModel,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $FoodModelCopyWith<$Res> get foodModel {
    return $FoodModelCopyWith<$Res>(_value.foodModel, (value) {
      return _then(_value.copyWith(foodModel: value));
    });
  }
}

/// @nodoc
abstract class _$OrderItemModelCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(
          _OrderItemModel value, $Res Function(_OrderItemModel) then) =
      __$OrderItemModelCopyWithImpl<$Res>;
  @override
  $Res call({FoodModel foodModel, int counter});

  @override
  $FoodModelCopyWith<$Res> get foodModel;
}

/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    extends _$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(
      _OrderItemModel _value, $Res Function(_OrderItemModel) _then)
      : super(_value, (v) => _then(v as _OrderItemModel));

  @override
  _OrderItemModel get _value => super._value as _OrderItemModel;

  @override
  $Res call({
    Object? foodModel = freezed,
    Object? counter = freezed,
  }) {
    return _then(_OrderItemModel(
      foodModel: foodModel == freezed
          ? _value.foodModel
          : foodModel // ignore: cast_nullable_to_non_nullable
              as FoodModel,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItemModel implements _OrderItemModel {
  const _$_OrderItemModel({required this.foodModel, required this.counter});

  factory _$_OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemModelFromJson(json);

  @override
  final FoodModel foodModel;
  @override
  final int counter;

  @override
  String toString() {
    return 'OrderItemModel(foodModel: $foodModel, counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemModel &&
            const DeepCollectionEquality().equals(other.foodModel, foodModel) &&
            const DeepCollectionEquality().equals(other.counter, counter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(foodModel),
      const DeepCollectionEquality().hash(counter));

  @JsonKey(ignore: true)
  @override
  _$OrderItemModelCopyWith<_OrderItemModel> get copyWith =>
      __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemModelToJson(this);
  }
}

abstract class _OrderItemModel implements OrderItemModel {
  const factory _OrderItemModel(
      {required FoodModel foodModel, required int counter}) = _$_OrderItemModel;

  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =
      _$_OrderItemModel.fromJson;

  @override
  FoodModel get foodModel;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$OrderItemModelCopyWith<_OrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
