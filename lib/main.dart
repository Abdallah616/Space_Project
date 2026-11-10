import 'package:flutter/material.dart';
import 'package:space/core/theme/app_theme_manager.dart';
import 'package:space/modules/home/home_view.dart';
import 'package:space/modules/planetDetails/planet_details_view.dart';
import 'package:space/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeManager.getThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeView.routeName: (context) => const HomeView(),
        PlanetDetailsView.routeName: (context) => const PlanetDetailsView(),
      },
    );
  }
}
