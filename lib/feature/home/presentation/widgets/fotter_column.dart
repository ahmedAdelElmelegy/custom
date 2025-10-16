import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;
  const FooterColumn({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.tr(),
          style: AppTextStyle.font16Bold(
            context,
          ).copyWith(color: ColorManager.white),
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            items.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                items[index].tr(),
                style: AppTextStyle.font14Meduim(
                  context,
                ).copyWith(color: ColorManager.white.withValues(alpha: 0.5)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
