import 'package:customs/core/theme/style.dart';
import 'package:customs/feature/home/presentation/widgets/acid_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/parties_mobile_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/attachments_data_mobile_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/order_data_mobile_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/policy_to_be_modified_mobile_form.dart';
import 'package:flutter/material.dart';
import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/home_card_section.dart';

import 'package:customs/feature/recharge_mainfist/presentation/widgets/back_arrow_text.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/mainfist_data_continer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

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
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.cover),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.3),
                      Colors.black.withValues(alpha: 0.7),
                    ],
                  ),
                ),
              ),

              // Header Content
              Positioned(top: 60, left: 16, right: 16, child: BackArrowText()),

              Positioned(
                bottom: -80,
                left: 16,
                right: 16,
                child: MainfistDataContainer(),
              ),
            ],
          ),
          const SizedBox(height: 200), // spacing after card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                HomeCardSection(
                  title: 'policy_to_be_modified'.tr(),
                  child: PolicyToBeModifiedMobileForm(),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'parties'.tr(),
                  child: PartiesMobileForm(),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'acid_data'.tr(),
                  child: AcidDataMobileForm(),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'goods_data'.tr(),
                  child: GoodsDataMobileForm(),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'order_data'.tr(),
                  child: OrderDataMobileForm(),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'attachments_title'.tr(),
                  child: AttachmentsDataMobileForm(),
                ),
                const SizedBox(height: 24),
                CustomBtn(
                  color: ColorManager.primary,
                  width: double.infinity,

                  text: 'submit_to_customs'.tr(),
                  onPressed: () {},
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'cancel'.tr(),
                    style: AppTextStyle.font14Meduim(context),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30), // spacing after card
        ],
      ),
    );
  }
}
