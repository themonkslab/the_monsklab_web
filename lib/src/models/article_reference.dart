import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

part 'article_reference.g.dart';

@JsonSerializable()
class ArticleReference extends Equatable {
  const ArticleReference({
    required this.path,
    required this.title,
  });
  factory ArticleReference.fromJson(Map<String, dynamic> json) =>
      _$ArticleReferenceFromJson(json);
  final String path;
  final String title;

  @override
  List<Object> get props => [path, title];

  Map<String, dynamic> toJson() => _$ArticleReferenceToJson(this);

  ArticleReference copyWith({
    String? path,
    String? title,
  }) {
    return ArticleReference(
      path: path ?? this.path,
      title: title ?? this.title,
    );
  }

  @override
  String toString() =>
      '''ArticleReference(${Colorizer.colorizeWithBrightMagenta(text: 'path:')} $path,
  title: $title)''';
}
