import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final double? width;
  final double? height;
  final String path;
  final Color? color;
  const SvgIcon({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width ?? 24,
      height: height ?? 24,
      colorFilter: ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
    );
  }
}
