import 'package:the_monkslab_web/src/constants/_index.dart';

enum SocialsType {
  facebook(AppAssets.facebookLogo),
  instagram(AppAssets.instagramLogo),
  linkedin(AppAssets.linkedinLogo),
  twitter(AppAssets.twitterLogo);

  final String socialAsset;
  const SocialsType(this.socialAsset);
}

class Author {
  final String picture;
  final String name;
  const Author({
    required this.name,
    required this.picture,
  });
}

class LearningPath {
  LearningPath({
    required this.id,
    required this.title,
    required this.courses,
  });

  final int id;
  final String title;
  final List<Course> courses;
}

class Course {
  Course({
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
  final List<Author> authors;
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
  final Author author;
  final DateTime published;
  final String? readingTime;
}
