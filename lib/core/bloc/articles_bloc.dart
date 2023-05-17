import 'dart:async';

import 'package:newsapp/core/models/article.dart';
import 'package:newsapp/core/services/articles_service.dart';
import 'package:rxdart/rxdart.dart';

class ArticlesBloc {
  final _subject = BehaviorSubject<String>.seeded('');
  final _articles = ArticlesService();

  Stream<List<Article>?> get stream => _subject.stream
      .debounce((event) => TimerStream(
            event,
            const Duration(milliseconds: 500),
          ))
      .switchMap((value) => _articles.fetchList(value));

  void update(String value) => _subject.add(value);

  dispose() => _subject.close();
}
