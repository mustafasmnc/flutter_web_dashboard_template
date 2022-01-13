import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/routing/router.dart';
import 'package:web_dashboard/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
