import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgIcon(path: AppIcons.notification, width: 30, height: 30),
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: ColorManager.red,
            shape: BoxShape.circle,
          ),
          child: Text(
            "1",
            style: TextStyle(
              color: ColorManager.white,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
