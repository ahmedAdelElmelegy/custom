import 'package:customs/core/services/save_route_index.dart';
import 'package:customs/core/theme/colors.dart';

import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:customs/feature/home/presentation/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainTabletLayout extends StatefulWidget {
  final Widget child;
  const MainTabletLayout({super.key, required this.child});

  @override
  State<MainTabletLayout> createState() => _MainTabletLayoutState();
}

class _MainTabletLayoutState extends State<MainTabletLayout> {
  // List<Widget> screens = [
  //   HomeTabletBody(),
  //   ServicesScreen(),
  //   AboutScreen(),
  //   ContactUsScreen(),
  // ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
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

            // screens
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: widget.child,
              ),
            ),
            const SizedBox(height: 30),
            Footer(),
          ],
        ),
      ),
    );
  }
}
