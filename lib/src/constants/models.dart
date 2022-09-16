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
    required this.title,
    required this.courses,
  });

  final String title;
  final List<AppCourse> courses;
}

class AppCourse {
  AppCourse({
    required this.title,
    required this.description,
    required this.authors,
    required this.content,
    this.subTitle,
    this.materialsAuthor,
  });

  final String title;
  final String? subTitle;
  final String description;
  final List<AppAuthor> authors;
  final String? materialsAuthor;
  final List<CourseSection> content;
}

class CourseSection {
  CourseSection({
    required this.title,
    required this.chapters,
    this.description,
  });

  final String title;
  final String? description;
  final List<CourseChapter> chapters;
}

class CourseChapter {
  CourseChapter({
    required this.title,
    required this.description,
    required this.data,
    required this.author,
  });
  final String title;
  final String description;
  final String data;
  final AppAuthor author;
}
