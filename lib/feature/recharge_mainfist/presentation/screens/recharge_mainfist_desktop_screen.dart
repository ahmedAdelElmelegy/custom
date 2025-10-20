import 'package:customs/feature/recharge_mainfist/presentation/widgets/back_arrow_text.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/mainfist_data_continer.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_cover_image.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_desktop_body.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_gradient_color.dart';
import 'package:flutter/material.dart';

class RechargeMainfistDesktopScreen extends StatelessWidget {
  const RechargeMainfistDesktopScreen({super.key});

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

              Positioned(
                top: 60,
                left: 120,
                right: 120,
                child: BackArrowText(),
              ),

              Positioned(
                bottom: -80,
                left: 120,
                right: 120,
                child: MainfistDataContainer(),
              ),
            ],
          ),
          const SizedBox(height: 180),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: RechargeMainfistDesktopBody(),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
