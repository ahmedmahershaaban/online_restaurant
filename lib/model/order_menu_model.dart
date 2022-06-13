import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_restaurant/model/food_model.dart';
import 'package:online_restaurant/model/order_item_model.dart';
part 'order_menu_model.freezed.dart';
part 'order_menu_model.g.dart';

@freezed
abstract class OrderMenuModel with _$OrderMenuModel {
  const factory OrderMenuModel({
    required List<OrderItemModel> orderItemList,
    required String id,
    required String userId,
    required String userNotificationToken,
    required String orderStatus,
    required int orderDate,
    required double orderPrice,
  }) = _OrderMenuModel;

  factory OrderMenuModel.fromJson(Map<String, dynamic> json) => _$OrderMenuModelFromJson(json);
}
