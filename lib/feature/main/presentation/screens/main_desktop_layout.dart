import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/feature/about/presentation/screens/about_screen.dart';
import 'package:customs/feature/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:customs/feature/home/presentation/screens/home_desktop_body.dart';
import 'package:customs/feature/home/presentation/widgets/fotter.dart';
import 'package:customs/feature/home/presentation/widgets/header.dart';
import 'package:customs/feature/services/presentation/screens/services.dart';
import 'package:customs/feature/update_mainfist/presentation/screens/update_mainfist_screen.dart';
import 'package:flutter/material.dart';

class MainDesktopLayout extends StatefulWidget {
  const MainDesktopLayout({super.key});

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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Sidebar (Animated)
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isVisible ? 220 : 0,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: ColorManager.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 8,
                  offset: const Offset(2, 0),
                ),
              ],
            ),
            child: isVisible
                ? Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                // currentIndex = index;
                                isVisible = false;
                              });
                            },
                            child: Text(
                              ['Home', 'Services', 'About', 'Contact'][index],
                              style: AppTextStyle.font16Bold(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : null,
          ),

          // ✅ Main Content
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Header(
                    onIndexChange: (index) {
                      setState(() => currentIndex = index);
                    },
                    onTap: () {
                      setState(() => isVisible = !isVisible);
                    },
                  ),

                  // UpdateMainfistBody(),
                  // SizedBox(height: 200),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: screens[currentIndex],
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
