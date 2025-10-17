import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/widgets/home_card_section.dart';
import 'package:customs/feature/home/presentation/widgets/acdl_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/basic_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/beneficiary_form.dart';
import 'package:customs/feature/home/presentation/widgets/bill_of_lading_form.dart';
import 'package:customs/feature/home/presentation/widgets/goods_data_form.dart';
import 'package:customs/feature/home/presentation/widgets/home_action_btn.dart';
import 'package:customs/feature/home/presentation/widgets/home_route_list.dart';
import 'package:customs/feature/home/presentation/widgets/parties_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeDesktopBody extends StatelessWidget {
  const HomeDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint(size.width.toString());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorManager.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: HomeRouteList(),
            ),
            const SizedBox(height: 30),

            HomeActionBtn(),
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

            HomeCardSection(title: 'goods_data'.tr(), child: GoodsDataForm()),
            const SizedBox(height: 30),
            HomeCardSection(title: 'basic_data'.tr(), child: BasicDataForm()),
            const SizedBox(height: 30),
          ],
        ),
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