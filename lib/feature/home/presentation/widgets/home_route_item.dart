import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/utils/app_constants.dart';
import 'package:customs/core/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeRouteItem extends StatelessWidget {
  final int index;
  final List<String> routeList;
  const HomeRouteItem({
    super.key,
    required this.index,
    required this.routeList,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // if list has more than 1 element, show first and last only
    final displayRoute = routeList.length > 1
        ? '${routeList.first.tr()} >...... ${routeList.last.tr()}'
        : routeList.first.tr();
    return Row(
      children: [
        Text(
          size.width < 600 ? displayRoute : routeList[index].tr(),
          style: AppTextStyle.font14Meduim(context).copyWith(
            color: index != AppConstants.routes.length - 1
                ? ColorManager.white
                : Colors.white.withValues(alpha: 0.5),
            // fontWeight: FontWeight.bold,
            fontFamily: 'TajawalBold',
          ),
        ),
        SizedBox(width: 8),
        if (index != AppConstants.routes.length - 1)
          Icon(Icons.arrow_forward_ios, size: 12, color: ColorManager.white),
      ],
    );
  }
}
