import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final void Function()? onPressed;

  const CustomBtn({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? ColorManager.green,
        minimumSize: Size(width ?? 50, height ?? 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,

      child: Text(
        text,
        style: AppTextStyle.font14Meduim(
          context,
        ).copyWith(color: ColorManager.white),
      ),
    );
  }
}
