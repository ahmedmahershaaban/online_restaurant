// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderMenuModel _$OrderMenuModelFromJson(Map<String, dynamic> json) {
  return _OrderMenuModel.fromJson(json);
}

/// @nodoc
class _$OrderMenuModelTearOff {
  const _$OrderMenuModelTearOff();

  _OrderMenuModel call(
      {required List<OrderItemModel> orderItemList,
      required String id,
      required String userId,
      required String userNotificationToken,
      required String orderStatus,
      required int orderDate,
      required double orderPrice}) {
    return _OrderMenuModel(
      orderItemList: orderItemList,
      id: id,
      userId: userId,
      userNotificationToken: userNotificationToken,
      orderStatus: orderStatus,
      orderDate: orderDate,
      orderPrice: orderPrice,
    );
  }

  OrderMenuModel fromJson(Map<String, Object?> json) {
    return OrderMenuModel.fromJson(json);
  }
}

/// @nodoc
const $OrderMenuModel = _$OrderMenuModelTearOff();

/// @nodoc
mixin _$OrderMenuModel {
  List<OrderItemModel> get orderItemList => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userNotificationToken => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  int get orderDate => throw _privateConstructorUsedError;
  double get orderPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderMenuModelCopyWith<OrderMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMenuModelCopyWith<$Res> {
  factory $OrderMenuModelCopyWith(
          OrderMenuModel value, $Res Function(OrderMenuModel) then) =
      _$OrderMenuModelCopyWithImpl<$Res>;
  $Res call(
      {List<OrderItemModel> orderItemList,
      String id,
      String userId,
      String userNotificationToken,
      String orderStatus,
      int orderDate,
      double orderPrice});
}

/// @nodoc
class _$OrderMenuModelCopyWithImpl<$Res>
    implements $OrderMenuModelCopyWith<$Res> {
  _$OrderMenuModelCopyWithImpl(this._value, this._then);

  final OrderMenuModel _value;
  // ignore: unused_field
  final $Res Function(OrderMenuModel) _then;

  @override
  $Res call({
    Object? orderItemList = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? userNotificationToken = freezed,
    Object? orderStatus = freezed,
    Object? orderDate = freezed,
    Object? orderPrice = freezed,
  }) {
    return _then(_value.copyWith(
      orderItemList: orderItemList == freezed
          ? _value.orderItemList
          : orderItemList // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNotificationToken: userNotificationToken == freezed
          ? _value.userNotificationToken
          : userNotificationToken // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as int,
      orderPrice: orderPrice == freezed
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$OrderMenuModelCopyWith<$Res>
    implements $OrderMenuModelCopyWith<$Res> {
  factory _$OrderMenuModelCopyWith(
          _OrderMenuModel value, $Res Function(_OrderMenuModel) then) =
      __$OrderMenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderItemModel> orderItemList,
      String id,
      String userId,
      String userNotificationToken,
      String orderStatus,
      int orderDate,
      double orderPrice});
}

/// @nodoc
class __$OrderMenuModelCopyWithImpl<$Res>
    extends _$OrderMenuModelCopyWithImpl<$Res>
    implements _$OrderMenuModelCopyWith<$Res> {
  __$OrderMenuModelCopyWithImpl(
      _OrderMenuModel _value, $Res Function(_OrderMenuModel) _then)
      : super(_value, (v) => _then(v as _OrderMenuModel));

  @override
  _OrderMenuModel get _value => super._value as _OrderMenuModel;

  @override
  $Res call({
    Object? orderItemList = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? userNotificationToken = freezed,
    Object? orderStatus = freezed,
    Object? orderDate = freezed,
    Object? orderPrice = freezed,
  }) {
    return _then(_OrderMenuModel(
      orderItemList: orderItemList == freezed
          ? _value.orderItemList
          : orderItemList // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNotificationToken: userNotificationToken == freezed
          ? _value.userNotificationToken
          : userNotificationToken // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as int,
      orderPrice: orderPrice == freezed
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderMenuModel implements _OrderMenuModel {
  const _$_OrderMenuModel(
      {required this.orderItemList,
      required this.id,
      required this.userId,
      required this.userNotificationToken,
      required this.orderStatus,
      required this.orderDate,
      required this.orderPrice});

  factory _$_OrderMenuModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderMenuModelFromJson(json);

  @override
  final List<OrderItemModel> orderItemList;
  @override
  final String id;
  @override
  final String userId;
  @override
  final String userNotificationToken;
  @override
  final String orderStatus;
  @override
  final int orderDate;
  @override
  final double orderPrice;

  @override
  String toString() {
    return 'OrderMenuModel(orderItemList: $orderItemList, id: $id, userId: $userId, userNotificationToken: $userNotificationToken, orderStatus: $orderStatus, orderDate: $orderDate, orderPrice: $orderPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderMenuModel &&
            const DeepCollectionEquality()
                .equals(other.orderItemList, orderItemList) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.userNotificationToken, userNotificationToken) &&
            const DeepCollectionEquality()
                .equals(other.orderStatus, orderStatus) &&
            const DeepCollectionEquality().equals(other.orderDate, orderDate) &&
            const DeepCollectionEquality()
                .equals(other.orderPrice, orderPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderItemList),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userNotificationToken),
      const DeepCollectionEquality().hash(orderStatus),
      const DeepCollectionEquality().hash(orderDate),
      const DeepCollectionEquality().hash(orderPrice));

  @JsonKey(ignore: true)
  @override
  _$OrderMenuModelCopyWith<_OrderMenuModel> get copyWith =>
      __$OrderMenuModelCopyWithImpl<_OrderMenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderMenuModelToJson(this);
  }
}

abstract class _OrderMenuModel implements OrderMenuModel {
  const factory _OrderMenuModel(
      {required List<OrderItemModel> orderItemList,
      required String id,
      required String userId,
      required String userNotificationToken,
      required String orderStatus,
      required int orderDate,
      required double orderPrice}) = _$_OrderMenuModel;

  factory _OrderMenuModel.fromJson(Map<String, dynamic> json) =
      _$_OrderMenuModel.fromJson;

  @override
  List<OrderItemModel> get orderItemList;
  @override
  String get id;
  @override
  String get userId;
  @override
  String get userNotificationToken;
  @override
  String get orderStatus;
  @override
  int get orderDate;
  @override
  double get orderPrice;
  @override
  @JsonKey(ignore: true)
  _$OrderMenuModelCopyWith<_OrderMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
