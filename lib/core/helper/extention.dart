import 'package:customs/core/widgets/adaptive_layout.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_desktop_body.dart';
import 'package:customs/feature/home/presentation/screens/home_mobile_body.dart';
import 'package:customs/feature/home/presentation/screens/home_tablet_body.dart';
import 'package:customs/feature/main/presentation/screens/main_desktop_layout.dart';
import 'package:customs/feature/main/presentation/screens/main_mobile_layout.dart';
import 'package:customs/feature/main/presentation/screens/main_tablet_layout.dart';
import 'package:customs/feature/services/presentation/screens/services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// final isLogin = false;

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return AdaptiveLayout(
          mobilelayout: (context) => MainMobileLayout(),
          desktopLayout: (context) => MainDesktopLayout(),
          tabletLayout: (context) => MainTabletLayout(),
        );
      },
      routes: [
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return AdaptiveLayout(
              mobilelayout: (context) => HomeMobileBody(),
              desktopLayout: (context) => HomeDesktopBody(),
              tabletLayout: (context) => HomeTabletBody(),
            );
          },
        ),
        GoRoute(
          path: 'services',
          builder: (BuildContext context, GoRouterState state) {
            return ServicesScreen();
          },
        ),
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return AboutScreen();
          },
        ),
        GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            return ContactUsScreen();
          },
        ),
      ],
    ),
  ],
);
// state.pathParameters["name"]!
