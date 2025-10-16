import 'package:customs/core/theme/colors.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_mobile_body.dart';
import 'package:customs/feature/home/presentation/widgets/custom_drawer.dart';
import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:customs/feature/services/presentation/screens/services.dart';
import 'package:flutter/material.dart';

class MainMobileLayout extends StatefulWidget {
  const MainMobileLayout({super.key});

  @override
  State<MainMobileLayout> createState() => _MainMobileLayoutState();
}

class _MainMobileLayoutState extends State<MainMobileLayout> {
  List<Widget> screens = [
    HomeMobileBody(),
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
            CustomDrawer(
              onIndexChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),

            screens[currentIndex],
            const SizedBox(height: 30),
            Footer(),
          ],
        ),
      ),
    );
  }
}
