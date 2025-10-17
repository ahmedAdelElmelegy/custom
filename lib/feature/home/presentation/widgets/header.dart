import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/services/save_route_index.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/core/utils/app_constants.dart';
import 'package:customs/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:customs/feature/home/presentation/widgets/notification_icon.dart';
import 'package:customs/feature/home/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

class Header extends StatefulWidget {
  final Function(int)? onIndexChange;

  const Header({super.key, this.onIndexChange});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int currentIndex = 0;

  @override
  void initState() {
    final index = getIndex(AppConstants.routeIndexKey);
    if (index != null) {
      setState(() {
        currentIndex = index;
      });
    }
    super.initState();
  }

  static List<String> name = ['main', 'services', 'about_us', 'contact'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 16),
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

          const SizedBox(width: 80),

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
