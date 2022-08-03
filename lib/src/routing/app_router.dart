enum AppRoute {
  home,
  article,
}

// final goRouterProvider = Provider<GoRouter>((ref) {
//   return GoRouter(
//     initialLocation: '/',
//     debugLogDiagnostics: false,
//     routes: [
//       GoRoute(
//         path: '/',
//         name: AppRoute.home.name,
//         builder: (context, state) => const Home(),
//         routes: [
//           GoRoute(
//             path: 'article/:data',
//             name: AppRoute.article.name,
//             builder: (context, state) {
//               final data = state.params['data']!;
//               return Article(
//                 data: data,
//               );
//             },
//           ),
//         ],
//       ),
//     ],
//     errorBuilder: (context, state) => const NotFoundScreen(),
//   );
// });
