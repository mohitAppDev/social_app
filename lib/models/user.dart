import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  anyMap: true,
  createFactory: true,
  explicitToJson: true,
)
class UserModel {
  @JsonKey(required: false)
  int ?id;

  @JsonKey(required: false)
  String ?name;

  @JsonKey(required: false)
  String ?email;

  @JsonKey(required: false)
  String ?url;

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}