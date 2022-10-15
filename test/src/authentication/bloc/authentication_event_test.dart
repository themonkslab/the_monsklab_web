import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/core/authentication/bloc/authentication_bloc.dart';

void main() {
  group('AuthenticationEvent', () {
    group('LoggedOut', () {
      test('supports value comparison', () {
        expect(
          AuthLogoutRequested(),
          AuthLogoutRequested(),
        );
      });
    });

    group('AuthenticationStatusChanged', () {
      test('supports value comparison', () {
        expect(
          const AuthStatusChanged(AuthStatus.unknown),
          const AuthStatusChanged(AuthStatus.unknown),
        );
      });
    });
  });
}
