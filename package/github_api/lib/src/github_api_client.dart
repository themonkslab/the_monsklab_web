import 'dart:convert';

import 'package:github_api/src/models/_index.dart';
import 'package:http/http.dart' as http;

class RequestFailure implements Exception {}

class NotFoundFailure implements Exception {}

class GithubApiClient {
  GithubApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<LearningPathApi> getLearningPath() async {
    const String url =
        'https://raw.githubusercontent.com/themonkslab/courses/main/flutter_learning_path.json';
    const String mainKey = 'courses';

    final response = await _httpClient.get(Uri.https(url));
    if (response.statusCode != 200) {
      throw RequestFailure();
    }
    final responseJson = jsonDecode(response.body) as Map;
    if (!responseJson.containsKey(mainKey)) throw NotFoundFailure();
    final results = responseJson[mainKey] as List;
    if (results.isEmpty) throw NotFoundFailure();
    return LearningPathApi.fromJson(results.first as Map<String, dynamic>);
  }

  Future<CourseApi> getCourse({
    required String url,
    required String mainKey,
  }) async {
    final response = await _httpClient.get(Uri.https(url));

    if (response.statusCode != 200) {
      throw RequestFailure();
    }

    final responseJson = jsonDecode(response.body) as Map;
    if (!responseJson.containsKey(mainKey)) throw NotFoundFailure();
    final results = responseJson[mainKey] as List;
    if (results.isEmpty) throw NotFoundFailure();
    return CourseApi.fromJson(results.first as Map<String, dynamic>);
  }

  Future<Section> getSection({
    required String url,
    required String mainKey,
  }) async {
    final response = await _httpClient.get(Uri.https(url));

    if (response.statusCode != 200) {
      throw RequestFailure();
    }

    final responseJson = jsonDecode(response.body) as Map;
    if (!responseJson.containsKey(mainKey)) throw NotFoundFailure();
    final results = responseJson[mainKey] as List;
    if (results.isEmpty) throw NotFoundFailure();
    return Section.fromJson(results.first as Map<String, dynamic>);
  }

  Future<Article> getArticle({
    required String url,
    required String mainKey,
  }) async {
    final response = await _httpClient.get(Uri.https(url));

    if (response.statusCode != 200) {
      throw RequestFailure();
    }

    final responseJson = jsonDecode(response.body) as Map;
    if (!responseJson.containsKey(mainKey)) throw NotFoundFailure();
    final results = responseJson[mainKey] as List;
    if (results.isEmpty) throw NotFoundFailure();
    return Article.fromJson(results.first as Map<String, dynamic>);
  }
}
