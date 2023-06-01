run:
	flutter run -t lib/main.dart

format:
	dart format --line-length=80 .

codegen:
	flutter pub run build_runner build --delete-conflicting-outputs

loc: 
	flutter gen-l10n

