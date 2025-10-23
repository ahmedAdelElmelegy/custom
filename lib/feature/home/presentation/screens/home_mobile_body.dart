import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/home_card_section.dart';
import 'package:customs/feature/home/presentation/manager/home/home_cubit.dart';
import 'package:customs/feature/home/presentation/widgets/acid_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/basic_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/beneficiary_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/bill_of_lading_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_mobile_form.dart';
import 'package:customs/feature/home/presentation/widgets/home_route.dart';
import 'package:customs/feature/home/presentation/widgets/parties_mobile_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeMobileBody extends StatelessWidget {
  const HomeMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formKeys = context.read<HomeCubit>().formKeys;
    debugPrint(size.width.toString());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),

          HomeRoute(),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'mainfist_title'.tr(),
              style: AppTextStyle.font16Bold(context),
              textAlign: TextAlign.start,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'policy_data'.tr(),
                  child: BillOfLadingMobileForm(),
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'policy_data'.tr(),
                  child: Form(key: formKeys[0], child: BeneficiaryMobileForm()),
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'parties'.tr(),
                  child: Form(key: formKeys[1], child: PartiesMobileForm()),
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'acid_data'.tr(),
                  child: Form(key: formKeys[2], child: AcidDataMobileForm()),
                ),
                const SizedBox(height: 30),

                HomeCardSection(
                  title: 'goods_data'.tr(),
                  child: Form(key: formKeys[3], child: GoodsDataMobileForm()),
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'basic_data'.tr(),
                  child: Form(key: formKeys[4], child: BasicDataMobileForm()),
                ),
                const SizedBox(height: 30),
                CustomBtn(
                  width: double.infinity,
                  color: ColorManager.primary,
                  text: 'mainfist_btn'.tr(),
                  onPressed: () {
                    context.go('/home/recharge_mainfist');
                  },
                ),
                const SizedBox(height: 16),
                SizedBox(width: 16),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: ColorManager.primary),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    final forms = context.read<HomeCubit>().formKeys;
                    for (var element in forms) {
                      if (element.currentState!.validate()) {
                        debugPrint("validate");
                      }
                    }
                  },
                  icon: Icon(Icons.save),
                  label: Text('save'.tr()),
                ),
                SizedBox(height: 16),
                TextButton(onPressed: () {}, child: Text('cancel'.tr())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
