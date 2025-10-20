import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/home_card_section.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:customs/feature/home/presentation/widgets/acdl_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/parties_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/attachments_data_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/order_data_form.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/policy_to_be_modified_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RechargeMainfistDesktopBody extends StatelessWidget {
  const RechargeMainfistDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final rechargeFormKeys = context.read<HomeCubit>().rechargeFormKeys;
    return Column(
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
          child: Form(key: rechargeFormKeys[5], child: AttachmentsDataForm()),
        ),
      ],
    );
  }
}
