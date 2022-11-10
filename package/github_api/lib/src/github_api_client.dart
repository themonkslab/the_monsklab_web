import 'dart:convert';

import 'package:github_api/src/models/_index.dart';
import 'package:http/http.dart' as http;

class RequestFailure implements Exception {}

class NotFoundFailure implements Exception {}

class GithubApiClient {
  GithubApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<List<LearningPath>> getLearningPathList({
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
    return results.map((map) => LearningPath.fromJson(map)).toList();
  }

  Future<LearningPath> getLearningPath({
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
    return LearningPath.fromJson(results.first as Map<String, dynamic>);
  }

  Future<Course> getCourse({
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
    return Course.fromJson(results.first as Map<String, dynamic>);
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
