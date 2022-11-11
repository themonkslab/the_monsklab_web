import 'dart:async';

import 'package:github_api/github_api.dart';

class CoursesRepository {
  CoursesRepository({GithubApiClient? githubApiClient})
      : _githubApiClient = githubApiClient ?? GithubApiClient();

  final GithubApiClient _githubApiClient;

  //TODO -LOW- add method for home page listing all the learning paths
  // Future<List<LearningPath>> getLearningPathList() async {
  //   final list = await _githubApiClient.getLearningPathList();
  //   return list;
  // }

  Future<LearningPath> getLearningPath() async {
    final learningPath = await _githubApiClient.getLearningPath();
    return learningPath;
  }
}
