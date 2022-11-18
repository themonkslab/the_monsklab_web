import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

part 'article_cubit.freezed.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit({
    required CoursesRepository coursesRepository,
    required this.path,
  })  : _coursesRepository = coursesRepository,
        super(const ArticleState());

  final CoursesRepository _coursesRepository;
  final String path;

  Future<void> fetchArticle() async {
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

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    @Default(ArticleStatus.initial) ArticleStatus status,
    Article? article,
  }) = _ArticleState;
}
