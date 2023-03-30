import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/core/locale_cubit/locale_cubit.dart';
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
            Text('404 - Page not found!'.hardcoded),
            AppGaps.gapH24,
            TextButton(
              onPressed: () => Beamer.of(context)
                  .beamToReplacementNamed('/${context.read<LocaleCubit>().state.locale.languageCode}'),
              child: const Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}
