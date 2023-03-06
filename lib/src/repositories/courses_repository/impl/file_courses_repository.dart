import 'dart:convert';
import 'dart:ui';

import 'package:the_monkslab_web/src/apis/_index.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/models/author.dart' as author;
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/formatters.dart';

class FileCoursesRepositoryImpl extends CoursesRepository {
  FileCoursesRepositoryImpl();

  List<FileCoursesGroup> fileCourses = [];
  Locale locale = const Locale('en');

  @override
  Future<Article?> getArticle(String path) async {
    if (fileCourses.isEmpty) {
      await fetchCoursesFromLocale(locale);
    }
    for (var fileCourses in fileCourses) {
      if (fileCourses.courses != null) {
        for (var fileCourse in fileCourses.courses!) {
          if (fileCourse.sections != null) {
            for (var fileSection in fileCourse.sections!) {
              if (fileSection.articles != null) {
                for (var article in fileSection.articles!) {
                  if (article.path == path && article.contentUrl != null) {
                    final articleContent =
                        (await HttpApi().getRequest(article.contentUrl!))
                            .toString();
                    final articleNameUrl = article.contentUrl!.split('/').last;
                    final folderUrl =
                        article.contentUrl!.replaceAll(articleNameUrl, '');
                    final formattedContent =
                        formatGitHubImagesUrls(articleContent, folderUrl);
                    return Article(
                      id: path,
                      title: article.title ?? '',
                      description: article.description ?? '',
                      content: formattedContent,
                      author: const author.Author(
                        name: 'The Monkslab',
                        picture: 'picture',
                      ),
                      published: article.published.toString(),
                    );
                  }
                }
              }
            }
          }
        }
      }
    }
    return null;
  }

  @override
  Future<Course?> getCourse(String path) async {
    if (fileCourses.isEmpty) {
      await fetchCoursesFromLocale(locale);
    }
    for (var fileCourses in fileCourses) {
      if (fileCourses.courses != null) {
        for (var fileCourse in fileCourses.courses!) {
          if (fileCourse.path == path) {
            final sections = fileCourse.sections ?? [];
            List<SectionReference> sectionsRef = sections
                .map(
                  (e) => SectionReference(
                    title: e.title ?? '',
                    path: e.path ?? '',
                  ),
                )
                .toList();
            return Course(
              id: path,
              title: fileCourse.title ?? '',
              description: '',
              sections: sectionsRef,
            );
          }
        }
      }
    }
    return null;
  }

  @override
  Future<List<Courses>?> getCourses(String courseGroup) async {
    if (fileCourses.isEmpty) {
      await fetchCoursesFromLocale(locale);
    }
    List<Courses> list = [];
    for (var courses in fileCourses) {
      List<CourseReference> coursesRef = courses.courses!
          .map((e) => CourseReference(path: e.path ?? '', title: e.title ?? ''))
          .toList();
      list.add(
        Courses(
          id: '',
          title: courses.courseGroup ?? '',
          shouldUpdate: false,
          courses: coursesRef,
        ),
      );
    }
    return list;
  }

  @override
  Future<Section?> getSection(String path) async {
    if (fileCourses.isEmpty) {
      await fetchCoursesFromLocale(locale);
    }
    for (var fileCourses in fileCourses) {
      if (fileCourses.courses != null) {
        for (var fileCourse in fileCourses.courses!) {
          if (fileCourse.sections != null) {
            for (var fileSection in fileCourse.sections!) {
              if (fileSection.path == path) {
                final articles = fileSection.articles ?? [];
                List<ArticleReference> articlesRef = articles
                    .map(
                      (e) => ArticleReference(
                        path: e.path ?? '',
                        title: e.title ?? '',
                      ),
                    )
                    .toList();
                return Section(
                  id: path,
                  title: fileSection.title ?? '',
                  description: fileSection.description ?? '',
                  articles: articlesRef,
                );
              }
            }
          }
        }
      }
    }
    return null;
  }

  @override
  Future<void> fetchCoursesFromLocale(Locale locale) async {
    String coursesUrl = AppUrls.dreamTeamersCoureseEn;
    switch (locale.toString()) {
      case 'en':
        coursesUrl = AppUrls.dreamTeamersCoureseEn;
        break;
      case 'es':
        coursesUrl = AppUrls.dreamTeamersCoureseEs;
        break;
    }

    final jsonFile = (await HttpApi().getRequest(coursesUrl)).toString();
    fileCourses
      ..clear()
      ..addAll(coursesFromJson(jsonFile));
  }
}

List<FileCoursesGroup> coursesFromJson(String str) =>
    List<FileCoursesGroup>.from(
      json.decode(str).map((x) => FileCoursesGroup.fromJson(x)),
    );

String coursesToJson(List<FileCoursesGroup> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FileCoursesGroup {
  FileCoursesGroup({
    this.courseGroup,
    this.courses,
  });

  factory FileCoursesGroup.fromJson(Map<String, dynamic> json) =>
      FileCoursesGroup(
        courseGroup: json["course_group"],
        courses: json["courses"] == null
            ? []
            : List<FileCourse>.from(
                json["courses"]!.map((x) => FileCourse.fromJson(x)),
              ),
      );

  final String? courseGroup;
  final List<FileCourse>? courses;

  FileCoursesGroup copyWith({
    String? courseGroup,
    List<FileCourse>? courses,
  }) =>
      FileCoursesGroup(
        courseGroup: courseGroup ?? this.courseGroup,
        courses: courses ?? this.courses,
      );

  Map<String, dynamic> toJson() => {
        "course_group": courseGroup,
        "courses": courses == null
            ? []
            : List<dynamic>.from(courses!.map((x) => x.toJson())),
      };
}

class FileCourse {
  FileCourse({
    this.title,
    this.path,
    this.sections,
  });

  factory FileCourse.fromJson(Map<String, dynamic> json) => FileCourse(
        title: json["title"],
        path: json["path"],
        sections: json["sections"] == null
            ? []
            : List<FileSection>.from(
                json["sections"]!.map((x) => FileSection.fromJson(x)),
              ),
      );

  final String? title;
  final String? path;
  final List<FileSection>? sections;

  FileCourse copyWith({
    String? title,
    String? path,
    List<FileSection>? sections,
  }) =>
      FileCourse(
        title: title ?? this.title,
        path: path ?? this.path,
        sections: sections ?? this.sections,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "path": path,
        "sections": sections == null
            ? []
            : List<dynamic>.from(sections!.map((x) => x.toJson())),
      };
}

class FileSection {
  FileSection({
    this.path,
    this.title,
    this.description,
    this.articles,
  });

  factory FileSection.fromJson(Map<String, dynamic> json) => FileSection(
        path: json["path"],
        title: json["title"],
        description: json["description"],
        articles: json["articles"] == null
            ? []
            : List<FileArticle>.from(
                json["articles"]!.map((x) => FileArticle.fromJson(x)),
              ),
      );

  final String? path;
  final String? title;
  final String? description;
  final List<FileArticle>? articles;

  FileSection copyWith({
    String? path,
    String? title,
    String? description,
    List<FileArticle>? articles,
  }) =>
      FileSection(
        path: path ?? this.path,
        title: title ?? this.title,
        description: description ?? this.description,
        articles: articles ?? this.articles,
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "title": title,
        "description": description,
        "articles": articles == null
            ? []
            : List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}

class FileArticle {
  FileArticle({
    this.path,
    this.title,
    this.description,
    this.contentUrl,
    this.author,
    this.published,
  });

  factory FileArticle.fromJson(Map<String, dynamic> json) => FileArticle(
        path: json["path"],
        title: json["title"],
        description: json["description"],
        contentUrl: json["contentUrl"],
        author: authorValues.map[json["author"]]!,
        published: json["published"] == null
            ? null
            : DateTime.parse(json["published"]),
      );

  final String? path;
  final String? title;
  final String? description;
  final String? contentUrl;
  final Author? author;
  final DateTime? published;

  FileArticle copyWith({
    String? path,
    String? title,
    String? description,
    String? contentUrl,
    Author? author,
    DateTime? published,
  }) =>
      FileArticle(
        path: path ?? this.path,
        title: title ?? this.title,
        description: description ?? this.description,
        contentUrl: contentUrl ?? this.contentUrl,
        author: author ?? this.author,
        published: published ?? this.published,
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "title": title,
        "description": description,
        "contentUrl": contentUrl,
        "author": authorValues.reverse[author],
        "published": published?.toIso8601String(),
      };
}

enum Author { theMonkslab }

final authorValues = EnumValues({"The Monkslab": Author.theMonkslab});

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
