import 'package:flutter/material.dart';
import 'package:newsapp/core/models/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(article.title),
      subtitle: Text(article.summary),
    );
  }
}
