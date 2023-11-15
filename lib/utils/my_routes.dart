import 'dart:collection';

import 'package:doctors/pages/dashboard/dashboard_page.dart';
import 'package:doctors/pages/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../pages/profile/profile_page.dart';

enum MyRoutes {
  dashboardRoute("/dashboard", DashBoardPage()),
  profileRoute("/profilePage", ProfilePage()),
  signUpRoute("/signUpRoute", SignUpPage());

  final Widget widget;
  final String path;

  const MyRoutes(this.path, this.widget);

  static HashMap<String, WidgetBuilder> getRoute({MyRoutes? route}) {
    HashMap<String, WidgetBuilder> routes = HashMap();

    if (route != null) {
      routes[route.path] = (context) => route.widget;
    } else {
      for (var route in MyRoutes.values) {
        routes[route.path] = (context) => route.widget;
      }
    }

    return routes;
  }
}
