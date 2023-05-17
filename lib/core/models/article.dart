import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Article {
  const Article(
    this.id,
    this.title,
    this.imageUrl,
    this.summary,
    this.publishedAt,
  );
  final int id;
  final String title;
  final String imageUrl;
  final String summary;
  final DateTime publishedAt;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

