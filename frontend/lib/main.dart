import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';
import 'package:frontend/pages/home_screen.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (_, __) => const HomeScreen(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      routerConfig: _router,
      title: 'Dart Blog 🚀',
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      theme: FluentThemeData.light(),
    );
  }
}
