import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/theme/colors.dart';
import 'package:customs/feature/home/presentation/widgets/fotter_column.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 60),
      width: double.infinity,
      decoration: BoxDecoration(color: ColorManager.secondary),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 220,
        runSpacing: 50,
        direction: Axis.horizontal,
        children: [
          Image.asset(AppImages.logo, width: 100, height: 100),
          FooterColumn(
            title: 'services_most_demand',
            items: ['mainfirst', 'acl', 'customs_clearance'],
          ),
          FooterColumn(
            title: 'support_and_help',
            items: ['frequently_asked_questions'],
          ),
          FooterColumn(title: 'more', items: ['privacy']),
        ],
      ),
    );
  }
}
