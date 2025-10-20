import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BackArrowText extends StatelessWidget {
  const BackArrowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgIcon(
          path: AppIcons.arrowRight,
          color: ColorManager.white,
          width: 28,
          height: 28,
        ),
        const SizedBox(width: 10),
        Text(
          'recharge_request'.tr(),
          style: AppTextStyle.font24Bold(context).copyWith(
            color: ColorManager.white,
            shadows: [
              Shadow(
                blurRadius: 8,
                color: Colors.black.withValues(alpha: 0.4),
                offset: const Offset(1, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
