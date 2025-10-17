import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/detail/profile_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_desktop_body.dart';
import 'package:customs/feature/main/presentation/screens/main_desktop_layout.dart';
import 'package:customs/feature/services/presentation/screens/services.dart';
import 'package:go_router/go_router.dart';

// final isLogin = false;

final GoRouter router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainDesktopLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeDesktopBody(),
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
