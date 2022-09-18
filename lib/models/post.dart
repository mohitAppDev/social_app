import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  anyMap: true,
  createFactory: true,
  explicitToJson: true,
)
class PostModel {
  @JsonKey(required: false)
  int ?id;

  @JsonKey(required: false)
  int ?likeCount;

  @JsonKey(required: false)
  int ?commentCount;

  @JsonKey(required: false)
  String ?description;

  @JsonKey(required: false)
  String ?url;

  PostModel();

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}