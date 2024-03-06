import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'UI/home_page.dart';
import 'UI/splash_screen.dart';

class pokedex_app extends StatelessWidget {

  final GoRouter _router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => SplashScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}




void main() {
  runApp(pokedex_app());
}