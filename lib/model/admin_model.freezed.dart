// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) {
  return _AdminModel.fromJson(json);
}

/// @nodoc
class _$AdminModelTearOff {
  const _$AdminModelTearOff();

  _AdminModel call({required String id, required String email}) {
    return _AdminModel(
      id: id,
      email: email,
    );
  }

  AdminModel fromJson(Map<String, Object?> json) {
    return AdminModel.fromJson(json);
  }
}

/// @nodoc
const $AdminModel = _$AdminModelTearOff();

/// @nodoc
mixin _$AdminModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminModelCopyWith<AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminModelCopyWith<$Res> {
  factory $AdminModelCopyWith(
          AdminModel value, $Res Function(AdminModel) then) =
      _$AdminModelCopyWithImpl<$Res>;
  $Res call({String id, String email});
}

/// @nodoc
class _$AdminModelCopyWithImpl<$Res> implements $AdminModelCopyWith<$Res> {
  _$AdminModelCopyWithImpl(this._value, this._then);

  final AdminModel _value;
  // ignore: unused_field
  final $Res Function(AdminModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdminModelCopyWith<$Res> implements $AdminModelCopyWith<$Res> {
  factory _$AdminModelCopyWith(
          _AdminModel value, $Res Function(_AdminModel) then) =
      __$AdminModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String email});
}

/// @nodoc
class __$AdminModelCopyWithImpl<$Res> extends _$AdminModelCopyWithImpl<$Res>
    implements _$AdminModelCopyWith<$Res> {
  __$AdminModelCopyWithImpl(
      _AdminModel _value, $Res Function(_AdminModel) _then)
      : super(_value, (v) => _then(v as _AdminModel));

  @override
  _AdminModel get _value => super._value as _AdminModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_AdminModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminModel implements _AdminModel {
  const _$_AdminModel({required this.id, required this.email});

  factory _$_AdminModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminModelFromJson(json);

  @override
  final String id;
  @override
  final String email;

  @override
  String toString() {
    return 'AdminModel(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$AdminModelCopyWith<_AdminModel> get copyWith =>
      __$AdminModelCopyWithImpl<_AdminModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminModelToJson(this);
  }
}

abstract class _AdminModel implements AdminModel {
  const factory _AdminModel({required String id, required String email}) =
      _$_AdminModel;

  factory _AdminModel.fromJson(Map<String, dynamic> json) =
      _$_AdminModel.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$AdminModelCopyWith<_AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}
