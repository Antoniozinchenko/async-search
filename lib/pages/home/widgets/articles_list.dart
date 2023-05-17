import 'package:flutter/material.dart';
import 'package:newsapp/core/bloc/articles_bloc.dart';
import 'package:newsapp/pages/home/widgets/article_item.dart';
import 'package:provider/provider.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: context.read<ArticlesBloc>().stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('failed to fetch'),
          );
        }

        final data = snapshot.data;

        if (data == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (_, index) => ArticleItem(article: data[index]),
        );
      },
    );
  }
}
