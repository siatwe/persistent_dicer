// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../../ui/views/dice/dice_view.dart';
import '../../../ui/views/home/home_view.dart';
import '../../../ui/views/startup/startup_view.dart';

class Routes {
  static const String diceView = '/';
  static const String startupView = '/startup-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    diceView,
    startupView,
    homeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.diceView, page: DiceView),
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    DiceView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => DiceView(),
        settings: data,
      );
    },
    StartupView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
  };
}
