import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:flutter/material.dart';

class MainfistDataItem extends StatelessWidget {
  final String title;
  final String value;

  const MainfistDataItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppTextStyle.font14Meduim(
            context,
          ).copyWith(color: ColorManager.black),
        ),
        const SizedBox(width: 6),
        Text(
          value,
          style: AppTextStyle.font14Meduim(
            context,
          ).copyWith(color: ColorManager.black),
        ),
      ],
    );
  }
}
