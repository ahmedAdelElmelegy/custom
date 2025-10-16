import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/home_card_section.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:customs/feature/home/presentation/widgets/acdl_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/basic_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/beneficiary_form.dart';
import 'package:customs/feature/home/presentation/widgets/bill_of_lading_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/home_route.dart';
import 'package:customs/feature/home/presentation/widgets/parties_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabletBody extends StatelessWidget {
  const HomeTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint(size.width.toString());
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 30),
                HomeRoute(),
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'mainfist_title'.tr(),
                      style: AppTextStyle.font16Bold(context),
                    ),
                    Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('cancel'.tr()),
                          ),
                          SizedBox(width: 16),
                          OutlinedButton.icon(
                            onPressed: () {
                              final forms = context.read<HomeCubit>().formKeys;
                              for (var form in forms) {
                                if (form.currentState!.validate()) {
                                  debugPrint('valid');
                                }
                              }
                            },
                            icon: Icon(Icons.save),
                            label: Text('save'.tr()),
                          ),
                          SizedBox(width: 16),
                          CustomBtn(
                            height: 40,
                            text: 'mainfist_btn'.tr(),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'policy_data'.tr(),
                  child: BillOfLadingForm(),
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'policy_data'.tr(),
                  child: BeneficiaryForm(),
                ),
                const SizedBox(height: 30),
                HomeCardSection(title: 'parties'.tr(), child: PartiesForm()),
                const SizedBox(height: 30),
                HomeCardSection(title: 'acid_data'.tr(), child: AcidDataForm()),
                const SizedBox(height: 30),

                HomeCardSection(
                  title: 'goods_data'.tr(),
                  child: GoodsDataForm(),
                ),
                const SizedBox(height: 30),
                HomeCardSection(
                  title: 'basic_data'.tr(),
                  child: BasicDataForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




// GoRouter.of(context).go('/splash');
// context.go('/splash');
// path parmeter
// context.go('/splash/$name');
// query parameter like path parameter
 // GoRouter.of(context).go('/splash');
            // String name = "Amar";
            // context.go('/splash/$name');
            // context.goNamed(RouteName.splash, pathParameters: {"name": "Amar"});
            // redirect