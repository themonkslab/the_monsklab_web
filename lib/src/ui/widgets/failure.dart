import 'package:flutter/material.dart';

class AppFailure extends StatelessWidget {
  const AppFailure({
    this.error,
    super.key,
  });

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(error ?? 'Ooops! Something happened! Sorry!'),
      ),
    );
  }
}
