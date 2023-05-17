import 'package:dio/dio.dart';

import '../models/article.dart';

class SpaceNewsApi {
  final _dio = Dio(
    BaseOptions(baseUrl: 'https://api.spaceflightnewsapi.net'),
  );

  Future<List<Article>> search(
    String search, {
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<Map>(
      '/v4/articles/',
      queryParameters: {'title_contains': search},
      cancelToken: cancelToken,
    );
    final articles = (response.data!['results'] as List)
        .map((e) => Article.fromJson(e))
        .toList();
    return articles;
  }
}
