import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/core/authentication/bloc/authentication_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MockUser extends Mock implements User {}

void main() {
  group('AuthenticationState', () {
    group('AuthenticationState.unknown', () {
      test('suports value comparison', () {
        expect(
          const AuthState.unknown(),
          const AuthState.unknown(),
        );
      });
    });

    group('AuthenticationState.authenticated', () {
      test('supports value comparisons', () {
        final user = MockUser();
        expect(
          AuthState.authenticated(user),
          AuthState.authenticated(user),
        );
      });
    });

    group('AuthenticationState.unauthenticated', () {
      test('supports value comparisons', () {
        expect(
          const AuthState.unauthenticated(),
          const AuthState.unauthenticated(),
        );
      });
    });
  });
}
