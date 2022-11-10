import 'package:courses_repository/src/models/_index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required int id,
    required String title,
    required String description,
    required String content,
    required Author author,
    required DateTime published,
    String? readingTime,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);
}
