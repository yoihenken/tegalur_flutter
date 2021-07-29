import 'package:flutter/material.dart';
import 'package:tegalur_flutter/ui/about/about.dart';
import 'package:tegalur_flutter/ui/dashboard/dashboard.dart';
import 'package:tegalur_flutter/ui/feedback/feedback.dart';
import 'package:tegalur_flutter/ui/listcontent/berita/berita_list.dart';
import 'package:tegalur_flutter/ui/listcontent/event/event_list.dart';
import 'package:tegalur_flutter/ui/listcontent/wisata/wisata_list.dart';

MaterialPageRoute _pageRoute({RouteSettings settings, Widget body}) =>
    MaterialPageRoute(
      settings: settings,
      builder: (_) => body,
    );

Route generateRoute(RouteSettings settings) {
  Route _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rDashboard:
      _route = _pageRoute(body: Dashboard(), settings: settings);
      break;
    case rAbout:
      _route = _pageRoute(body: About(), settings: settings);
      break;
    case rBeritaList:
      _route = _pageRoute(body: BeritaList(), settings: settings);
      break;
    case rEventList:
      _route = _pageRoute(body: EventList(), settings: settings);
      break;
    case rWisataList:
      _route = _pageRoute(body: WisataList(), settings: settings);
      break;
  case rFeedbackForm:
      _route = _pageRoute(body: FeedbackForm(), settings: settings);
      break;
  }
  return _route;
}

const String rDashboard = '/';
const String rAbout = '/about';
const String rBeritaList = '/beritalist';
const String rEventList = '/eventlist';
const String rWisataList = '/wisatalist';
const String rFeedbackForm = '/feedbackform';
