import 'package:freezed_annotation/freezed_annotation.dart';
part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
abstract class FoodModel with _$FoodModel {
  const factory FoodModel({
    required final String id,
    required final String title,
    required final String description,
    required final String image,
    required final String category,
    required final double price,
    required bool favorite,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, dynamic> json) => _$FoodModelFromJson(json);
}
