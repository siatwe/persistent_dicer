import 'package:flutter/material.dart';
import 'package:persistent_dicer/src/app/generated/locator/locator.dart';
import 'package:persistent_dicer/src/app/generated/router/router.gr.dart'
    as RouterGR;
import 'package:stacked_services/stacked_services.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "persistent_dicer",
      initialRoute: RouterGR.Routes.diceView,
      onGenerateRoute: RouterGR.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
        brightness: Brightness.light,
        // Farben?!
        // appBarTheme: AppBarTheme(color: Colors.red)
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
