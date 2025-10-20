import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RechargeMainfistAction extends StatelessWidget {
  const RechargeMainfistAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        SizedBox(width: 8),
        Text('recharge_request'.tr(), style: AppTextStyle.font16Bold(context)),
        Spacer(),
        Row(
          children: [
            TextButton(onPressed: () {}, child: Text('cancel'.tr())),
            SizedBox(width: 8),
            CustomBtn(
              height: 40,
              color: ColorManager.primary,
              text: 'mainfist_btn'.tr(),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
