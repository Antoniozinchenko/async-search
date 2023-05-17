import 'package:flutter/material.dart';
import 'package:newsapp/core/bloc/articles_bloc.dart';
import 'package:provider/provider.dart';

import 'widgets/articles_list.dart';
import 'widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ArticlesBloc(),
      dispose: (_, bloc) => bloc.dispose(),
      child: Scaffold(
        appBar: AppBar(
          title: const Search(),
          toolbarHeight: 100,
        ),
        body: const ArticlesList(),
      ),
    );
  }
}
