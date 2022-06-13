import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_restaurant/model/food_model.dart';
part 'order_item_model.freezed.dart';
part 'order_item_model.g.dart';

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required FoodModel foodModel,
    required int counter,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) => _$OrderItemModelFromJson(json);
}
