import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/core/authentication/bloc/authentication_bloc.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({Key? key}) : super(key: key);

//   static Route<void> route() {
//     return MaterialPageRoute<void>(builder: (_) => const HomeView());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Image(
//             width: 120,
//             height: 120,
//             image: AssetImage(AppAssets.monkslabNoBackground),
//           ),
//           AppHypertext(
//             text: appTitle.toUpperCase(),
//             textAlign: TextAlign.center,
//             style: AppTextStyles.h1.copyWith(color: AppColors.white),
//             enabledDisabledColors: const [AppColors.black, AppColors.white],
//             onPressed: () => context.beamToNamed('/${AppRoutes.archive.name}'),
//           )
//         ],
//       )),
//     );
//   }
// }

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                final userId = context.select(
                  (AuthBloc bloc) => bloc.state.user.id,
                );
                return Text('UserID: $userId');
              },
            ),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                context.read<AuthBloc>().add(AuthLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
