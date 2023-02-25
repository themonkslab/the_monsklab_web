part of 'language_switcher_bloc.dart';

class LanguageSwitcherState extends Equatable {
  const LanguageSwitcherState({
    required this.currentLanguage,
  });

  factory LanguageSwitcherState.inicial() {
    return const LanguageSwitcherState(currentLanguage: Language.en);
  }

  final Language currentLanguage;

  @override
  List<Object?> get props => [currentLanguage];

  LanguageSwitcherState copyWith({
    Language? currentLanguage,
  }) {
    return LanguageSwitcherState(
      currentLanguage: currentLanguage ?? this.currentLanguage,
    );
  }

  @override
  String toString() => 'LanguageSwitcherState(currentLanguage: $currentLanguage)';
}
