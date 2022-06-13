// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodModel _$$_FoodModelFromJson(Map json) => _$_FoodModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      favorite: json['favorite'] as bool,
    );

Map<String, dynamic> _$$_FoodModelToJson(_$_FoodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'category': instance.category,
      'price': instance.price,
      'favorite': instance.favorite,
    };
