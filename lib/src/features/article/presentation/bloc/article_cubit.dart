import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit({
    required CoursesRepository coursesRepository,
  })  : _coursesRepository = coursesRepository,
        super(ArticleState.initial());

  final CoursesRepository _coursesRepository;

  Future<void> fetchArticle(
    String articlePath,
    String sectionPath,
    String coursePath,
    String groupName,
  ) async {
    emit(state.copyWith(status: ArticleStatus.loading));
    try {
      final article = await _coursesRepository.fetchArticle(
        articlePath,
        sectionPath,
        coursePath,
        groupName,
      );
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

  final ArticleStatus status;
  final Article? article;

  @override
  List<Object?> get props => [article, status];

  @override
  String toString() => '''ArticleState(${Colorizer.colorizeWithBrightMagenta(text: 'status:')} $status,
      article: ${article?.title})''';

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
