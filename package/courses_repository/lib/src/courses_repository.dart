import 'dart:async';

import 'package:courses_repository/src/models/_index.dart';
import 'package:github_api/github_api.dart';

class CoursesRepository {
  CoursesRepository({GithubApiClient? githubApiClient})
      : _githubApiClient = githubApiClient ?? GithubApiClient();

  final GithubApiClient _githubApiClient;

  Future<LearningPathRepo> getLearningPath() async {
    final learningPath = await _githubApiClient.getLearningPath();

    return LearningPathRepo(
      id: learningPath.id,
      title: learningPath.title,
      courses: learningPath.courses
          .map((course) =>
              CourseRepo(id: course.id, title: course.title, url: course.url))
          .toList(),
    );
  }
}
