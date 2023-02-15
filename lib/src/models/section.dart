import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String id,
    required String title,
    required String description,
    required List<ArticleReference> articles,
  }) = _Section;

  factory Section.fromJson(Map<String, Object?> json) =>
      _$SectionFromJson(json);

  factory Section.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    final articles = (doc.data()!['articles'] as List)
        .map((e) => ArticleReference.fromJson(e))
        .toList();

    return Section(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      articles: articles,
    );
  }
}
