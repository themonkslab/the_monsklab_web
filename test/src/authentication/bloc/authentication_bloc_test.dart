import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/core/authentication/bloc/authentication_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MockAuthenticationRepository extends Mock implements AuthRepository {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  const user = User('id');
  late AuthRepository authenticationRepository;
  late UserRepository userRepository;

  setUp(() {
    authenticationRepository = MockAuthenticationRepository();
    when(() => authenticationRepository.status)
        .thenAnswer((_) => const Stream.empty());
    userRepository = MockUserRepository();
  });

  group('AuthenticationBloc', () {
    test('initial state is AuthenticationState.unknown', () {
      final authenticationBloc = AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      );
      expect(authenticationBloc.state, const AuthState.unknown());
      authenticationBloc.close();
    });

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is unauthenticated',
      setUp: () {
        when(() => authenticationRepository.status).thenAnswer(
          (_) => Stream.value(AuthStatus.unauthenticated),
        );
      },
      build: (() => AuthBloc(
          authenticationRepository: authenticationRepository,
          userRepository: userRepository)),
      expect: () => const <AuthState>[AuthState.unauthenticated()],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [authenticated] when status is authenticated',
      setUp: () {
        when(() => authenticationRepository.status)
            .thenAnswer((_) => Stream.value(AuthStatus.authenticated));
        when(() => userRepository.getUser()).thenAnswer((_) async => user);
      },
      build: () => AuthBloc(
          authenticationRepository: authenticationRepository,
          userRepository: userRepository),
      expect: () => const <AuthState>[
        AuthState.authenticated(user),
      ],
    );
  });

  group('AuthenticationStatusChanged', () {
    blocTest<AuthBloc, AuthState>(
      'emits [authenticated] when status is authenticated',
      setUp: () {
        when(() => userRepository.getUser()).thenAnswer((_) async => user);
      },
      build: () => AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(
        const AuthStatusChanged(AuthStatus.authenticated),
      ),
      expect: () => const <AuthState>[
        AuthState.authenticated(user),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is unauthenticated',
      build: () => AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(
        const AuthStatusChanged(AuthStatus.unauthenticated),
      ),
      expect: () => const <AuthState>[
        AuthState.unauthenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is authenticated but getUser fails',
      setUp: () {
        when(() => userRepository.getUser()).thenThrow(Exception('oops'));
      },
      build: () => AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(
        const AuthStatusChanged(AuthStatus.authenticated),
      ),
      expect: () => const <AuthState>[
        AuthState.unauthenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is authenticated '
      'but getUser returns null',
      setUp: () {
        when(() => userRepository.getUser()).thenAnswer((_) async => null);
      },
      build: () => AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(
        const AuthStatusChanged(AuthStatus.authenticated),
      ),
      expect: () => const <AuthState>[
        AuthState.unauthenticated(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unknown] when status is unknown',
      build: () => AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(
        const AuthStatusChanged(AuthStatus.unknown),
      ),
      expect: () => const <AuthState>[
        AuthState.unknown(),
      ],
    );
  });

  group('AuthenticationLogoutRequested', () {
    blocTest<AuthBloc, AuthState>(
      'calls logOut on authenticationRepository '
      'when AuthenticationLogoutRequested is added',
      build: () => AuthBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(AuthLogoutRequested()),
      verify: (_) {
        verify(() => authenticationRepository.logOut()).called(1);
      },
    );
  });
}
