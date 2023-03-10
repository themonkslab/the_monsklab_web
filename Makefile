run:
	fvm flutter run -t lib/main.dart

format:
	fvm dart format --line-length=80 .

codegen:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
