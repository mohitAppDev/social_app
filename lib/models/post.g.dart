// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map json) => PostModel()
  ..id = json['id'] as int?
  ..likeCount = json['like_count'] as int?
  ..commentCount = json['comment_count'] as int?
  ..description = json['description'] as String?
  ..url = json['url'] as String?;

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'id': instance.id,
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
      'description': instance.description,
      'url': instance.url,
    };
