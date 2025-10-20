import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_cover_image.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_desktop_body.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/recharge_mainfist_gradient_color.dart';
import 'package:flutter/material.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/back_arrow_text.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/mainfist_data_continer.dart';

class RechargeMainfistTabletScreen extends StatelessWidget {
  const RechargeMainfistTabletScreen({super.key});

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
              Positioned(top: 60, left: 24, right: 24, child: BackArrowText()),

              Positioned(
                bottom: -80,
                left: 24,
                right: 24,
                child: MainfistDataContainer(),
              ),
            ],
          ),
          const SizedBox(height: 200), // spacing after card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: RechargeMainfistDesktopBody(),
          ),
          const SizedBox(height: 30), // spacing after card
        ],
      ),
    );
  }
}
