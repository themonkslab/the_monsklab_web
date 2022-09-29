import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/core/authentication/bloc/authentication_bloc.dart';

void main() {
  group('AuthenticationEvent', () {
    group('LoggedOut', () {
      test('supports value comparison', () {
        expect(
          AuthenticationLogoutRequested(),
          AuthenticationLogoutRequested(),
        );
      });
    });

    group('AuthenticationStatusChanged', () {
      test('supports value comparison', () {
        expect(
          const AuthenticationStatusChanged(AuthenticationStatus.unknown),
          const AuthenticationStatusChanged(AuthenticationStatus.unknown),
        );
      });
    });
  });
}
