import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      child: SvgIcon(path: AppIcons.user, width: 25, height: 25),
    );
  }
}
