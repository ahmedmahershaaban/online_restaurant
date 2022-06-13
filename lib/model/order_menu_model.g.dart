// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderMenuModel _$$_OrderMenuModelFromJson(Map json) => _$_OrderMenuModel(
      orderItemList: (json['orderItemList'] as List<dynamic>)
          .map((e) =>
              OrderItemModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      id: json['id'] as String,
      userId: json['userId'] as String,
      userNotificationToken: json['userNotificationToken'] as String,
      orderStatus: json['orderStatus'] as String,
      orderDate: json['orderDate'] as int,
      orderPrice: (json['orderPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OrderMenuModelToJson(_$_OrderMenuModel instance) =>
    <String, dynamic>{
      'orderItemList': instance.orderItemList.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'userId': instance.userId,
      'userNotificationToken': instance.userNotificationToken,
      'orderStatus': instance.orderStatus,
      'orderDate': instance.orderDate,
      'orderPrice': instance.orderPrice,
    };
