import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/core/api/spacenews_api.dart';

import '../models/article.dart';

class ArticlesService {
  CancelToken? _cancelToken;
  Stream<List<Article>?> fetchList(String search) async* {
    yield null;
    _cancelToken?.cancel();
    _cancelToken = CancelToken();
    try {
      final result = await GetIt.I<SpaceNewsApi>().search(
        search,
        cancelToken: _cancelToken,
      );
      yield result;
    } on DioError catch (e) {
      if (e.type != DioErrorType.cancel) {
        rethrow;
      }
    }
  }
}
