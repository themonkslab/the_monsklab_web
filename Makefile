run:
	flutter run -t lib/main.dart

loc: 
	flutter gen-l10n

format:
	dart format --line-length=80 .

codegen:
	flutter pub run build_runner build --delete-conflicting-outputs
