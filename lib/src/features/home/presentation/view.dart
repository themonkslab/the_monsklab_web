import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            width: 120,
            height: 120,
            image: AssetImage(AppAssets.monkslabNoBackground),
          ),
          AppHypertext(
            text: appTitle.toUpperCase(),
            textAlign: TextAlign.center,
            style: AppTextStyles.h1.copyWith(color: AppColors.white),
            enabledDisabledColors: const [
              AppColors.black,
              AppColors.white,
            ],
            onPressed: () => context.beamToNamed('/${AppRoutes.archive.name}'),
          )
        ],
      )),
    );
  }
}
