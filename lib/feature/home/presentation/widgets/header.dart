import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:customs/feature/home/presentation/widgets/notification_icon.dart';
import 'package:customs/feature/home/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

class Header extends StatefulWidget {
  final Function(int)? onIndexChange;
  final bool isTablet;

  const Header({super.key, this.onIndexChange, this.isTablet = false});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
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

  static List<String> name = ['main', 'services', 'about_us', 'contact'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: widget.isTablet ? 24 : 120,
        vertical: 16,
      ),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.logo, width: 55, height: 55),

          SizedBox(width: widget.isTablet ? 50 : 80),

          Expanded(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 40,
              runSpacing: 8,
              children: List.generate(
                name.length,
                (index) => NavBarItem(
                  title: name[index].tr(),
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                    widget.onIndexChange!(index);
                  },
                  isActive: index == currentIndex,
                ),
              ),
            ),
          ),

          const SizedBox(width: 24),

          Row(
            children: [
              NotificationIcon(),
              const SizedBox(width: 16),
              const ProfileImage(),
              const SizedBox(width: 12),
              Row(
                children: [
                  Text(
                    'my_account'.tr(),
                    style: AppTextStyle.font16Meduim(context),
                  ),
                  const Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
