import 'package:customs/feature/update_mainfist/presentation/widgets/recharge_mainfist_action.dart';
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
