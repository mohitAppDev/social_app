// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map json) => CommentModel()
  ..id = json['id'] as int?
  ..postId = json['post_id'] as int?
  ..comment = json['comment'] as String?
  ..email = json['email'] as String?;

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'comment': instance.comment,
      'email': instance.email,
    };
