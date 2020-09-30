import 'package:auto_route/auto_route_annotations.dart';
import 'package:persistent_dicer/src/ui/views/dice/dice_view.dart';
import 'package:persistent_dicer/src/ui/views/startup/startup_view.dart';
import 'package:persistent_dicer/src/ui/views/home/home_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: DiceView, initial: true),
    AdaptiveRoute(page: StartupView),
    AdaptiveRoute(page: HomeView),
  ],
)
class $Router {}
