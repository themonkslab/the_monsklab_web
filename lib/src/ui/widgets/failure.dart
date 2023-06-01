import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

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
        child: AppText(error ?? 'Ooops! Something happened! Sorry!'),
      ),
    );
  }
}
