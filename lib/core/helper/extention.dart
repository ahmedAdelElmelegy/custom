import 'package:customs/core/widgets/adaptive_layout.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/detail/profile_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_desktop_body.dart';
import 'package:customs/feature/home/presentation/screens/home_mobile_body.dart';
import 'package:customs/feature/home/presentation/screens/home_tablet_body.dart';
import 'package:customs/feature/main/presentation/screens/main_desktop_layout.dart';
import 'package:customs/feature/main/presentation/screens/main_mobile_layout.dart';
import 'package:customs/feature/main/presentation/screens/main_tablet_layout.dart';
import 'package:customs/feature/recharge_mainfist/presentation/screens/recharge_mainfist_desktop_screen.dart';
import 'package:customs/feature/recharge_mainfist/presentation/screens/recharge_mainfist_mobile_screen.dart';
import 'package:customs/feature/recharge_mainfist/presentation/screens/recharge_mainfist_tablet_screen.dart';
import 'package:customs/feature/services/presentation/screens/services_screen.dart';
import 'package:go_router/go_router.dart';

// final isLogin = false;

final GoRouter router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AdaptiveLayout(
          mobilelayout: (context) => MainMobileLayout(child: child),
          desktopLayout: (context) => MainDesktopLayout(child: child),
          tabletLayout: (context) => MainTabletLayout(child: child),
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => AdaptiveLayout(
            mobilelayout: (context) => HomeMobileBody(),
            desktopLayout: (context) => HomeDesktopBody(),
            tabletLayout: (context) => HomeTabletBody(),
          ),
          routes: [
            GoRoute(
              path: 'recharge_mainfist',
              builder: (context, state) => AdaptiveLayout(
                mobilelayout: (context) => RechargeMainfistMobileScreen(),
                desktopLayout: (context) => RechargeMainfistDesktopScreen(),
                tabletLayout: (context) => RechargeMainfistTabletScreen(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/services',
          builder: (context, state) => const ServicesScreen(),
        ),
        GoRoute(
          path: '/about',
          builder: (context, state) => const AboutScreen(),
          routes: [
            GoRoute(
              path: 'profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/contact',
          builder: (context, state) => const ContactUsScreen(),
        ),
      ],
    ),
  ],
  initialLocation: '/home',
);

// state.pathParameters["name"]!
