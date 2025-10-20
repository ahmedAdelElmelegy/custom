import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/feature/recharge_mainfist/presentation/widgets/mainfist_data_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainfistDataContainer extends StatelessWidget {
  const MainfistDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'mainfist_data'.tr(),
            style: AppTextStyle.font18Bold(
              context,
            ).copyWith(color: ColorManager.black),
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 12),
          Wrap(
            direction: Axis.horizontal,
            runSpacing: 24,
            spacing: 120,
            alignment: WrapAlignment.spaceBetween,

            children: const [
              MainfistDataItem(title: 'رقم المنافيست:', value: '1312442'),
              MainfistDataItem(title: 'تاريخ التراكي:', value: '2025-02-22'),
              MainfistDataItem(title: 'تاريخ الوصول:', value: '2025-02-22'),
              MainfistDataItem(title: 'وسيلة النقل:', value: 'سفينة'),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
