import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/clients/clients.dart';
import 'package:web_dashboard/pages/drivers/drivers.dart';
import 'package:web_dashboard/pages/overview/overview.dart';
import 'package:web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _pagePageRoute(OverViewPage());
    case DriversPageRoute:
      return _pagePageRoute(DriversPage());
    case ClientsPageRoute:
      return _pagePageRoute(ClientsPage());
    default:
      return _pagePageRoute(OverViewPage());
  }
}

PageRoute _pagePageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
