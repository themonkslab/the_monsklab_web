import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_reference.freezed.dart';
part 'article_reference.g.dart';

@freezed
class ArticleReference with _$ArticleReference {
  const factory ArticleReference({
    required String path,
    required String title,
  }) = _ArticleReference;

  factory ArticleReference.fromJson(Map<String, Object?> json) =>
      _$ArticleReferenceFromJson(json);
}
