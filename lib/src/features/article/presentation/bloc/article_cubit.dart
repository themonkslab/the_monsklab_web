import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit({
    required CoursesRepository coursesRepository,
  })  : _coursesRepository = coursesRepository,
        super(ArticleState.initial());

  final CoursesRepository _coursesRepository;

  Future<void> fetchArticle(String path) async {
    emit(state.copyWith(status: ArticleStatus.loading));
    try {
      final article = await _coursesRepository.getArticle(path);
      emit(
        state.copyWith(
          status: ArticleStatus.success,
          article: article,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: ArticleStatus.failure));
    }
  }
}

enum ArticleStatus { initial, loading, success, failure }

class ArticleState extends Equatable {
  const ArticleState({
    required this.status,
    this.article,
  });

  factory ArticleState.initial() {
    return const ArticleState(status: ArticleStatus.initial);
  }

  factory ArticleState.fromMap(Map<String, dynamic> map) {
    return ArticleState(
      status: map['status'],
      article: map['article'] != null ? Article.fromMap(map['article']) : null,
    );
  }

  factory ArticleState.fromJson(String source) =>
      ArticleState.fromMap(json.decode(source));
  final ArticleStatus status;
  final Article? article;

  @override
  List<Object?> get props => [article, status];

  @override
  String toString() => 'ArticleState(status: $status, article: $article)';

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{}..addAll({'status': status});
    if (article != null) {
      result.addAll({'article': article!.toMap()});
    }

    return result;
  }

  String toJson() => json.encode(toMap());

  ArticleState copyWith({
    ArticleStatus? status,
    Article? article,
  }) {
    return ArticleState(
      status: status ?? this.status,
      article: article ?? this.article,
    );
  }
}
