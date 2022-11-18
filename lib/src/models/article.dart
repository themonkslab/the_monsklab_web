import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String title,
    required String description,
    required String content,
    required Author author,
    required DateTime published,
    String? readingTime,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);

  factory Article.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    return Article(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      content: doc.data()!['contentUrl'],
      author: Author(name: doc.data()!['author'], picture: 'mau_photo'),
      //published: doc.data()!['published'],
      published: DateTime.now(),
    );
  }
}
