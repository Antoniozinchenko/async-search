import 'package:flutter/material.dart';
import 'package:newsapp/core/bloc/articles_bloc.dart';
import 'package:provider/provider.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onChanged: (value) {
        context.read<ArticlesBloc>().update(value);
      },
      hintText: 'Type to search...',
    );
  }
}
