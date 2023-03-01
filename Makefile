run:
	flutter run -t lib/main.dart

loc: 
	flutter pub run easy_localization:generate --source-dir "assets/translations" && flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S "assets/translations"

format:
	dart format --line-length=80 .

codegen:
	flutter pub run build_runner build --delete-conflicting-outputs
