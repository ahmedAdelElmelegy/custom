import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatefulWidget {
  final Function(int)? onIndexChange;
  const CustomDrawer({super.key, this.onIndexChange});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    final uri = GoRouter.of(context).state.uri;
    final segments = uri.pathSegments;

    if (segments.isEmpty) {
      currentIndex = 0;
      return;
    }

    switch (segments.first) {
      case 'home':
        currentIndex = 0;
        break;
      case 'services':
        currentIndex = 1;
        break;
      case 'about':
        currentIndex = 2;
        break;
      case 'contact':
        currentIndex = 3;
        break;
      default:
        currentIndex = 0;
    }
  }

  List<String> name = ['main', 'services', 'about_us', 'contact'];
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppImages.logo, width: 36, height: 36),
              const SizedBox(width: 8),
              Text('mainfirst'.tr(), style: AppTextStyle.font16Bold(context)),
              const Spacer(),
              Icon(Icons.person),
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  setState(() {
                    isDrawerOpen = !isDrawerOpen;
                  });
                },
              ),
            ],
          ),

          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isDrawerOpen
                ? Column(
                    children: [
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          name.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: NavBarItem(
                              isActive: index == currentIndex,
                              title: name[index].tr(),
                              onTap: () {
                                setState(() {
                                  widget.onIndexChange!(index);
                                  currentIndex = index;
                                  isDrawerOpen = false;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
