import 'package:customs/core/services/save_route_index.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_desktop_body.dart';
import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:customs/feature/home/presentation/widgets/header.dart';
import 'package:customs/feature/services/presentation/screens/services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainDesktopLayout extends StatefulWidget {
  final Widget child;
  const MainDesktopLayout({super.key, required this.child});

  @override
  State<MainDesktopLayout> createState() => _MainDesktopLayoutState();
}

class _MainDesktopLayoutState extends State<MainDesktopLayout>
    with TickerProviderStateMixin {
  final List<Widget> screens = const [
    HomeDesktopBody(),
    ServicesScreen(),
    AboutScreen(),
    ContactUsScreen(),
  ];

  bool isVisible = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Header(
              onIndexChange: (index) {
                switch (index) {
                  case 0:
                    context.go('/home');
                    break;
                  case 1:
                    context.go('/services');
                    break;
                  case 2:
                    context.go('/about');
                    break;
                  case 3:
                    context.go('/contact');
                    break;
                }
                saveRouteIndex(index);
              },
            ),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: widget.child,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
