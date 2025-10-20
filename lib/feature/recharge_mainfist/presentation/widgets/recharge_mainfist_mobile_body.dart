import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/home_card_section.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:customs/feature/home/presentation/widgets/acid_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/parties_mobile_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/attachments_data_mobile_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/order_data_mobile_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/policy_to_be_modified_mobile_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RechargeMainfistMobileBody extends StatelessWidget {
  const RechargeMainfistMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final rechargeFormKeys = context.read<HomeCubit>().rechargeFormKeys;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          HomeCardSection(
            title: 'policy_to_be_modified'.tr(),
            child: Form(
              key: rechargeFormKeys[0],
              child: PolicyToBeModifiedMobileForm(),
            ),
          ),
          const SizedBox(height: 24),
          HomeCardSection(
            title: 'parties'.tr(),
            child: Form(key: rechargeFormKeys[1], child: PartiesMobileForm()),
          ),
          const SizedBox(height: 24),
          HomeCardSection(
            title: 'acid_data'.tr(),
            child: Form(key: rechargeFormKeys[2], child: AcidDataMobileForm()),
          ),
          const SizedBox(height: 24),
          HomeCardSection(
            title: 'goods_data'.tr(),
            child: Form(key: rechargeFormKeys[3], child: GoodsDataMobileForm()),
          ),
          const SizedBox(height: 24),
          HomeCardSection(
            title: 'order_data'.tr(),
            child: Form(key: rechargeFormKeys[4], child: OrderDataMobileForm()),
          ),
          const SizedBox(height: 24),
          HomeCardSection(
            title: 'attachments_title'.tr(),
            child: Form(
              key: rechargeFormKeys[5],
              child: AttachmentsDataMobileForm(),
            ),
          ),
          const SizedBox(height: 24),
          CustomBtn(
            color: ColorManager.primary,
            width: double.infinity,
            text: 'submit_to_customs'.tr(),
            onPressed: () {
              for (var element in rechargeFormKeys) {
                if (element.currentState!.validate()) {
                  debugPrint('Validation passed');
                }
              }
            },
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
    );
  }
}
