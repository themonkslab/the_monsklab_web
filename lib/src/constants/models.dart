import 'package:the_monkslab_web/src/constants/_index.dart';

enum AppSocialsType {
  facebook(AppAssets.facebookLogo),
  instagram(AppAssets.instagramLogo),
  linkedin(AppAssets.linkedinLogo),
  twitter(AppAssets.twitterLogo);

  final String socialAsset;
  const AppSocialsType(this.socialAsset);
}

class AppAuthor {
  final String picture;
  final String name;
  const AppAuthor({
    required this.name,
    required this.picture,
  });
}

class AppLearningPath {
  AppLearningPath({
    required this.id,
    required this.title,
    required this.courses,
  });

  final int id;
  final String title;
  final List<AppCourse> courses;
}

class AppCourse {
  AppCourse({
    required this.id,
    required this.title,
    required this.description,
    required this.authors,
    required this.content,
    this.subTitle,
    this.materialsAuthor,
  });

  final int id;
  final String title;
  final String? subTitle;
  final String description;
  final List<AppAuthor> authors;
  final String? materialsAuthor;
  final List<CourseSection> content;
}

class CourseSection {
  CourseSection({
    required this.id,
    required this.title,
    required this.chapters,
    this.description,
  });
  final int id;
  final String title;
  final String? description;
  final List<CourseChapter> chapters;
}

class CourseChapter {
  CourseChapter({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.author,
    required this.published,
    this.readingTime,
  });
  final int id;
  final String title;
  final String description;
  final String content;
  final AppAuthor author;
  final DateTime published;
  final String? readingTime;
}
