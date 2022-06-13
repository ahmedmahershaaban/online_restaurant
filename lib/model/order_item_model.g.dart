// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderItemModel _$$_OrderItemModelFromJson(Map json) => _$_OrderItemModel(
      foodModel: FoodModel.fromJson(
          Map<String, dynamic>.from(json['foodModel'] as Map)),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_OrderItemModelToJson(_$_OrderItemModel instance) =>
    <String, dynamic>{
      'foodModel': instance.foodModel.toJson(),
      'counter': instance.counter,
    };
