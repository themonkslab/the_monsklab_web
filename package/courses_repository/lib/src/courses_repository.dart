import 'dart:async';

import 'package:github_api/github_api.dart';

class CoursesRepository {
  CoursesRepository({GithubApiClient? githubApiClient})
      : _githubApiClient = githubApiClient ?? GithubApiClient();

  final GithubApiClient _githubApiClient;

  Future<List<LearningPath>> getLearningPath({
    required String url,
    required String mainKey,
  }) async {
    final list = await _githubApiClient.getLearningPathList(
      url:
          'https://raw.githubusercontent.com/themonkslab/courses/main/learning_path_list.json',
      mainKey: 'learning_path_list',
    );

    return list;
  }
}
