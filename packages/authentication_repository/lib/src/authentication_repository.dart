import 'dart:async';

enum AuthenticationSatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationSatus>();

  Stream<AuthenticationSatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationSatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      Duration(milliseconds: 300),
      () => _controller.add(AuthenticationSatus.authenticated),
    );
  }

  void logOut() {
    _controller.add(AuthenticationSatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
