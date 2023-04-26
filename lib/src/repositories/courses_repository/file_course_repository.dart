import 'dart:convert';

import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

abstract class FileCoursesRepository extends CoursesRepository {
  List<FileCoursesGroup> fileCoursesGroupList = [];

  //* variables or methods required to implement
  Future<String> getArticleContent(FileArticle fileArticle);
  Future<String> fetchCoursesIndexString();

  //* methods implemented from parent class
  @override
  Future<Article?> fetchArticle(String articlePath, String sectionPath,
      String coursePath, String groupName) async {
    if (fileCoursesGroupList.isEmpty) {
      await fetchAll();
    }
    final FileArticle fileArticle = _finder(
      groupName: groupName,
      coursePath: coursePath,
      sectionPath: sectionPath,
      articlePath: articlePath,
    );
    final Article article = fileArticle.toViewModel();
    return article.copyWith(content: await getArticleContent(fileArticle));
  }

  @override
  Future<Course?> fetchCourse(
    String coursePath,
    String groupName,
  ) async {
    if (fileCoursesGroupList.isEmpty) {
      await fetchAll();
    }
    final FileCourse fileCourses = _finder(
      groupName: groupName,
      coursePath: coursePath,
    );
    return fileCourses.toViewModel();
  }

  @override
  Future<List<CourseGroup>?> fetchAll() async {
    final jsonFile = await fetchCoursesIndexString();

    fileCoursesGroupList
      ..clear()
      ..addAll(coursesFromMap(jsonFile));

    return fileCoursesGroupList.map((e) => e.toViewModel()).toList();
  }

  @override
  Future<CourseGroup?> fetchCourseGroup(String groupName) async {
    if (fileCoursesGroupList.isEmpty) {
      await fetchAll();
    }
    final FileCoursesGroup fileCoursesGroup = _finder(
      groupName: groupName,
    );
    return fileCoursesGroup.toViewModel();
  }

  @override
  Future<Section?> fetchSection(
    String sectionPath,
    String coursePath,
    String groupName,
  ) async {
    if (fileCoursesGroupList.isEmpty) {
      await fetchAll();
    }
    final FileSection fileSection = _finder(
      groupName: groupName,
      coursePath: coursePath,
      sectionPath: sectionPath,
    );
    return fileSection.toViewModel();
  }

  /// The finder returns different types of objects depending on the variables set for the find.
  /// If you set a groupName and not a coursePath will return de FileCourseGroup
  /// that match with groupName.
  /// If you set groupName and coursePath will return the FileCourse that match
  /// with coursePath inside the groupName.
  /// If you set groupName, coursePath and sectionPath will return a FileSection
  /// If you set groupName, coursePath, sectionPath and articlePath will return
  /// a FileArticle
  _finder({
    String? articlePath,
    String? sectionPath,
    String? coursePath,
    String? groupName,
  }) {
    if (groupName != null) {
      for (final fileCoursesGroup in fileCoursesGroupList) {
        if (fileCoursesGroup.groupName == groupName) {
          //* if there isn't a coursePath specified return the FileCurseGroup
          if (coursePath == null) {
            return fileCoursesGroup;
          }
          for (final fileCourse in fileCoursesGroup.courses) {
            if (fileCourse.path == coursePath) {
              //* if there isn't a sectionPath specified return the FileCurse
              if (sectionPath == null) {
                return fileCourse;
              }
              if (fileCourse.path == coursePath) {
                for (final fileSection in fileCourse.sections) {
                  if (fileSection.path == sectionPath) {
                    //* if there isn't a articlePath specified return the FileSection
                    if (articlePath == null) {
                      return fileSection;
                    }
                    for (final article in fileSection.articles) {
                      //* Lastly return the FileArticle
                      if (article.path == articlePath) {
                        return article;
                      }
                    }
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
}

List<FileCoursesGroup> coursesFromJson(String str) =>
    List<FileCoursesGroup>.from(
      json.decode(str).map((x) => FileCoursesGroup.fromJson(x)),
    );

List<FileCoursesGroup> coursesFromMap(String str) =>
    List<FileCoursesGroup>.from(
      json.decode(str).map((x) => FileCoursesGroup.fromMap(x)),
    );

String coursesToJson(List<FileCoursesGroup> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FileCoursesGroup extends ViewModel<CourseGroup> {
  FileCoursesGroup({
    this.groupName,
    this.courses = const [],
  });

  factory FileCoursesGroup.fromJson(String source) =>
      FileCoursesGroup.fromMap(json.decode(source));

  factory FileCoursesGroup.fromMap(Map<String, dynamic> map) {
    return FileCoursesGroup(
      groupName: map['group_name'],
      courses: map['courses'] != null
          ? List<FileCourse>.from(
              map['courses']?.map((x) => FileCourse.fromMap(x)))
          : [],
    );
  }

  final String? groupName;
  final List<FileCourse> courses;

  @override
  CourseGroup toViewModel() {
    return CourseGroup(
        groupName: groupName,
        courses: courses.map((e) => e.toViewModel()).toList());
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (groupName != null) {
      result.addAll({'groupName': groupName});
    }
    result.addAll({'courses': courses.map((x) => x.toMap()).toList()});

    return result;
  }

  String toJson() => json.encode(toMap());
}

class FileCourse extends ViewModel<Course> {
  FileCourse({
    this.title,
    this.path,
    this.sections = const [],
  });

  factory FileCourse.fromJson(String source) =>
      FileCourse.fromMap(json.decode(source));

  factory FileCourse.fromMap(Map<String, dynamic> map) {
    return FileCourse(
      title: map['title'],
      path: map['path'],
      sections: map['sections'] != null
          ? List<FileSection>.from(
              map['sections']?.map((x) => FileSection.fromMap(x)))
          : [],
    );
  }

  final String? title;
  final String? path;
  final List<FileSection> sections;

  @override
  Course toViewModel() {
    return Course(
      id: 'id',
      title: title ?? '',
      description: '',
      sections: sections.map((e) => e.toViewModel()).toList(),
      path: path ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (title != null) {
      result.addAll({'title': title});
    }
    if (path != null) {
      result.addAll({'path': path});
    }
    result.addAll({'sections': sections.map((x) => x.toMap()).toList()});

    return result;
  }

  String toJson() => json.encode(toMap());
}

class FileSection extends ViewModel<Section> {
  FileSection({
    this.path,
    this.title,
    this.description,
    this.articles = const [],
  });

  factory FileSection.fromJson(String source) =>
      FileSection.fromMap(json.decode(source));

  factory FileSection.fromMap(Map<String, dynamic> map) {
    return FileSection(
      path: map['path'],
      title: map['title'],
      description: map['description'],
      articles: List<FileArticle>.from(
          map['articles']?.map((x) => FileArticle.fromMap(x))),
    );
  }

  final String? path;
  final String? title;
  final String? description;
  final List<FileArticle> articles;

  @override
  Section toViewModel() {
    return Section(
      id: 'id',
      title: title ?? '',
      description: description ?? '',
      articles: articles.map((e) => e.toViewModel()).toList(),
      path: path ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (path != null) {
      result.addAll({'path': path});
    }
    if (title != null) {
      result.addAll({'title': title});
    }
    if (description != null) {
      result.addAll({'description': description});
    }
    result.addAll({'articles': articles.map((x) => x.toMap()).toList()});

    return result;
  }

  String toJson() => json.encode(toMap());
}

class FileArticle extends ViewModel<Article> {
  FileArticle({
    this.path,
    this.title,
    this.description,
    this.contentUrl,
    this.author,
    this.published,
  });

  factory FileArticle.fromJson(String source) =>
      FileArticle.fromMap(json.decode(source));

  factory FileArticle.fromMap(Map<dynamic, dynamic> map) {
    return FileArticle(
      path: map['path'],
      title: map['title'],
      description: map['description'],
      contentUrl: map['contentUrl'],
      author: map['author'] != null ? AuthorEnum.theMonkslab : null,
      published:
          map['published'] != null ? DateTime.tryParse(map['published']) : null,
    );
  }

  final String? path;
  final String? title;
  final String? description;
  final String? contentUrl;
  final AuthorEnum? author;
  final DateTime? published;

  @override
  Article toViewModel() {
    return Article(
      id: 'id',
      title: title ?? '',
      description: description ?? '',
      author: const Author(name: 'The Monkslab', picture: ''),
      published: DateTime.now().toString(),
      path: path ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (path != null) {
      result.addAll({'path': path});
    }
    if (title != null) {
      result.addAll({'title': title});
    }
    if (description != null) {
      result.addAll({'description': description});
    }
    if (contentUrl != null) {
      result.addAll({'contentUrl': contentUrl});
    }
    if (author != null) {
      result.addAll({'author': author!.name});
    }
    if (published != null) {
      result.addAll({'published': published!.millisecondsSinceEpoch});
    }

    return result;
  }

  String toJson() => json.encode(toMap());
}

enum AuthorEnum { theMonkslab }

final authorValues = EnumValues({'The Monkslab': AuthorEnum.theMonkslab});

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
