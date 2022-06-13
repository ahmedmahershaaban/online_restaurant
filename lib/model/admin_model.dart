import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
abstract class AdminModel with _$AdminModel {
  const factory AdminModel({
    required final String id,
    required final String email,
  }) = _AdminModel;

  factory AdminModel.fromJson(Map<String, dynamic> json) => _$AdminModelFromJson(json);
}
