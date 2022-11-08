import 'package:the_monkslab_web/src/constants/index.dart';

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

class Section {
  Section({
    required this.title,
    required this.chapters,
    required this.url,
    this.description,
  });

  final String title;
  final String? description;
  final List<CourseChapter> chapters;
  final String url;
}

class CourseChapter {
  CourseChapter({
    required this.title,
    required this.description,
    required this.data,
    required this.author,
    required this.url,
  });
  final String title;
  final String description;
  final String data;
  final Author author;
  final String url;
}
