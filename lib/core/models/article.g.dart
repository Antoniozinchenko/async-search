// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      json['id'] as int,
      json['title'] as String,
      json['image_url'] as String,
      json['summary'] as String,
      DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'summary': instance.summary,
      'published_at': instance.publishedAt.toIso8601String(),
    };
