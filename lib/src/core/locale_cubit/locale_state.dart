part of 'locale_cubit.dart';

class LocaleState extends Equatable {
  const LocaleState({required this.locale});

  factory LocaleState.initial() {
    return const LocaleState(locale: Locale('en'));
  }

  final Locale locale;

  @override
  List<Object?> get props => [locale];

  LocaleState copyWith({
    Locale? locale,
  }) {
    return LocaleState(
      locale: locale ?? this.locale,
    );
  }

  @override
  String toString() => 'LocaleState(locale: $locale)';
}
