

import 'package:flutter/material.dart';
import 'package:tegalur_flutter/ui/about/about.dart';
import 'package:tegalur_flutter/ui/dashboard/dashboard.dart';

MaterialPageRoute _pageRoute ({RouteSettings settings, Widget body})=>MaterialPageRoute(
  settings: settings,
  builder: (_) => body,
);

Route generateRoute(RouteSettings settings) {
  Route _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rDashboard :
      _route = _pageRoute(body: Dashboard(), settings: settings);
      break;
    case rAbout :
      _route = _pageRoute(body: About(), settings: settings);
      break;
  }
  return _route;
}

const String rDashboard = '/';
const String rAbout = '/about';
