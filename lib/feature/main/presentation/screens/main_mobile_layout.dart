import 'package:customs/core/services/save_route_index.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/feature/home/presentation/widgets/custom_drawer.dart';
import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainMobileLayout extends StatefulWidget {
  final Widget child;
  const MainMobileLayout({super.key, required this.child});

  @override
  State<MainMobileLayout> createState() => _MainMobileLayoutState();
}

class _MainMobileLayoutState extends State<MainMobileLayout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomDrawer(
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
            const SizedBox(height: 30),
            Footer(),
          ],
        ),
      ),
    );
  }
}
