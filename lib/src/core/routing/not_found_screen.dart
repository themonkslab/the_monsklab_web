import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText('404 - Page not found!'.hardcoded),
            AppGaps.gapH24,
            TextButton(
              onPressed: () => LocalizedRoute(
                locale: context.read<LocaleCubit>().state.locale.languageCode,
              ).pushReplacement(context),
              child: const AppText('Home'),
            )
          ],
        ),
      ),
    );
  }
}
