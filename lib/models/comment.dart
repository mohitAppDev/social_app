import 'package:json_annotation/json_annotation.dart';
part 'comment.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  anyMap: true,
  createFactory: true,
  explicitToJson: true,
)
class CommentModel {
  @JsonKey(required: false)
  int ?id;

  @JsonKey(required: false)
  int ?postId;

  @JsonKey(required: false)
  String ?comment;

  @JsonKey(required: false)
  String ?email;

  CommentModel();

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}