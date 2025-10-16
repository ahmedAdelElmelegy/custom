import 'package:customs/core/theme/colors.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_tablet_body.dart';
import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:customs/feature/home/presentation/widgets/header.dart';
import 'package:customs/feature/services/presentation/screens/services.dart';
import 'package:flutter/material.dart';

class MainTabletLayout extends StatefulWidget {
  const MainTabletLayout({super.key});

  @override
  State<MainTabletLayout> createState() => _MainTabletLayoutState();
}

class _MainTabletLayoutState extends State<MainTabletLayout> {
  List<Widget> screens = [
    HomeTabletBody(),
    ServicesScreen(),
    AboutScreen(),
    ContactUsScreen(),
  ];
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
                setState(() {
                  currentIndex = index;
                });
              },
            ),

            // screens
            screens[currentIndex],
            const SizedBox(height: 30),
            Footer(),
          ],
        ),
      ),
    );
  }
}
