import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/feature/update_mainfist/presentation/widgets/recharge_mainfist_action.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UpdateMainfistBody extends StatelessWidget {
  const UpdateMainfistBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        children: [
          SizedBox(height: 36),
          RechargeMainfistAction(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
