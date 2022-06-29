
import 'package:memebattle/module/meme_battle_page.dart/meme_battle_page.dart';
import 'package:memebattle/router/app_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    late final Widget page;

    switch (routeSettings.name) {
      case AppRoutes.homeRoute:
        page = const MemeBattlePage();
        break;

      default:
        page = const MemeBattlePage();
    }

    return MaterialPageRoute(
      builder: (_) => page,
    );
  }
}
