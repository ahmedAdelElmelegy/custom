import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_cover_image.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_gradient_color.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_mobile_body.dart';
import 'package:flutter/material.dart';

import 'package:customs/feature/recharge_mainfist/presentation/widgets/back_arrow_text.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/mainfist_data_continer.dart';

class RechargeMainfistMobileScreen extends StatelessWidget {
  const RechargeMainfistMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint(size.width.toString());
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              RechargeMainFistCoverImage(),

              RechargeMainfistGradientColor(),

              // Header Content
              Positioned(top: 60, left: 16, right: 16, child: BackArrowText()),

              Positioned(
                bottom: -120,
                left: 16,
                right: 16,
                child: MainfistDataContainer(),
              ),
            ],
          ),
          const SizedBox(height: 200), // spacing after card
          RechargeMainfistMobileBody(),
          const SizedBox(height: 30), // spacing after card
        ],
      ),
    );
  }
}
