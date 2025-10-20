import 'package:customs/core/helper/constants.dart';
import 'package:flutter/material.dart';

class RechargeMainFistCoverImage extends StatelessWidget {
  const RechargeMainFistCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.cover),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
