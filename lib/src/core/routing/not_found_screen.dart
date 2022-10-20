import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('404 - Page not found!'.hardcoded),
      ),
    );
  }
}
