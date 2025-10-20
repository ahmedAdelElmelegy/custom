import 'package:customs/core/helper/constants.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/home_card_section.dart';
import 'package:customs/feature/home/presentation/widgets/acdl_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/parties_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/attachments_data_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/back_arrow_text.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/mainfist_data_continer.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/order_data_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/policy_to_be_modified_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RechargeMainfistTabletScreen extends StatelessWidget {
  const RechargeMainfistTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rechargeFormKeys = context.read<HomeCubit>().rechargeFormKeys;
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
              Positioned(
                top: 60,
                left: 120,
                right: 120,
                child: BackArrowText(),
              ),

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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: Text('cancel'.tr())),
                    const SizedBox(width: 24),
                    CustomBtn(
                      color: ColorManager.primary,
                      onPressed: () {
                        for (var element in rechargeFormKeys) {
                          if (element.currentState!.validate()) {
                            debugPrint('Validation passed');
                          }
                        }
                      },
                      text: 'submit_to_customs'.tr(),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'policy_to_be_modified'.tr(),
                  child: Form(
                    key: rechargeFormKeys[0],
                    child: PolicyToBeModifiedForm(),
                  ),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'parties'.tr(),
                  child: Form(key: rechargeFormKeys[1], child: PartiesForm()),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'acid_data'.tr(),
                  child: Form(key: rechargeFormKeys[2], child: AcidDataForm()),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'goods_data'.tr(),
                  child: Form(key: rechargeFormKeys[3], child: GoodsDataForm()),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'order_data'.tr(),
                  child: Form(key: rechargeFormKeys[4], child: OrderDataForm()),
                ),
                const SizedBox(height: 24),
                HomeCardSection(
                  title: 'attachments_title'.tr(),
                  child: Form(
                    key: rechargeFormKeys[5],
                    child: AttachmentsDataForm(),
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
