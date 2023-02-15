run:
	flutter run -t lib/main.dart

loc: 
	flutter gen-l10n

tools:
	dart pub global run devtools

format:
	dart format --line-length=80 .

codegen:
	flutter pub run build_runner build --delete-conflicting-outputs

codegen-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs
