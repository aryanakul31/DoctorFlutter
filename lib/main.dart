import 'package:doctors/resources/custom_theme.dart';
import 'package:doctors/utils/my_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: CustomTheme().getTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.dashboardRoute.path,
      routes: MyRoutes.getRoute(),
    );
  }
}