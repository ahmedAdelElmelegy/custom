import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:customs/feature/home/presentation/widgets/notification_icon.dart';
import 'package:customs/feature/home/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

class Header extends StatefulWidget {
  final Function(int)? onIndexChange;
  final void Function()? onTap;

  const Header({super.key, this.onIndexChange, this.onTap});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  static List<String> name = ['main', 'services', 'about_us', 'contact'];
  int currentIndex = 0;
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
          InkWell(onTap: widget.onTap, child: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
