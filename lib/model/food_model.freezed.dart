// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) {
  return _FoodModel.fromJson(json);
}

/// @nodoc
class _$FoodModelTearOff {
  const _$FoodModelTearOff();

  _FoodModel call(
      {required String id,
      required String title,
      required String description,
      required String image,
      required String category,
      required double price,
      required bool favorite}) {
    return _FoodModel(
      id: id,
      title: title,
      description: description,
      image: image,
      category: category,
      price: price,
      favorite: favorite,
    );
  }

  FoodModel fromJson(Map<String, Object?> json) {
    return FoodModel.fromJson(json);
  }
}

/// @nodoc
const $FoodModel = _$FoodModelTearOff();

/// @nodoc
mixin _$FoodModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodModelCopyWith<FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodModelCopyWith<$Res> {
  factory $FoodModelCopyWith(FoodModel value, $Res Function(FoodModel) then) =
      _$FoodModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      String image,
      String category,
      double price,
      bool favorite});
}

/// @nodoc
class _$FoodModelCopyWithImpl<$Res> implements $FoodModelCopyWith<$Res> {
  _$FoodModelCopyWithImpl(this._value, this._then);

  final FoodModel _value;
  // ignore: unused_field
  final $Res Function(FoodModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FoodModelCopyWith<$Res> implements $FoodModelCopyWith<$Res> {
  factory _$FoodModelCopyWith(
          _FoodModel value, $Res Function(_FoodModel) then) =
      __$FoodModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      String image,
      String category,
      double price,
      bool favorite});
}

/// @nodoc
class __$FoodModelCopyWithImpl<$Res> extends _$FoodModelCopyWithImpl<$Res>
    implements _$FoodModelCopyWith<$Res> {
  __$FoodModelCopyWithImpl(_FoodModel _value, $Res Function(_FoodModel) _then)
      : super(_value, (v) => _then(v as _FoodModel));

  @override
  _FoodModel get _value => super._value as _FoodModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_FoodModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodModel implements _FoodModel {
  const _$_FoodModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.category,
      required this.price,
      required this.favorite});

  factory _$_FoodModel.fromJson(Map<String, dynamic> json) =>
      _$$_FoodModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String image;
  @override
  final String category;
  @override
  final double price;
  @override
  final bool favorite;

  @override
  String toString() {
    return 'FoodModel(id: $id, title: $title, description: $description, image: $image, category: $category, price: $price, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FoodModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.favorite, favorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(favorite));

  @JsonKey(ignore: true)
  @override
  _$FoodModelCopyWith<_FoodModel> get copyWith =>
      __$FoodModelCopyWithImpl<_FoodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodModelToJson(this);
  }
}

abstract class _FoodModel implements FoodModel {
  const factory _FoodModel(
      {required String id,
      required String title,
      required String description,
      required String image,
      required String category,
      required double price,
      required bool favorite}) = _$_FoodModel;

  factory _FoodModel.fromJson(Map<String, dynamic> json) =
      _$_FoodModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get image;
  @override
  String get category;
  @override
  double get price;
  @override
  bool get favorite;
  @override
  @JsonKey(ignore: true)
  _$FoodModelCopyWith<_FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
