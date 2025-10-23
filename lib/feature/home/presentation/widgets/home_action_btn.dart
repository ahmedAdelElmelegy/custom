import 'package:customs/core/theme/style.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/feature/home/presentation/manager/home/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeActionBtn extends StatelessWidget {
  const HomeActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('mainfist_title'.tr(), style: AppTextStyle.font16Bold(context)),
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('cancel'.tr())),
              SizedBox(width: 16),
              OutlinedButton.icon(
                onPressed: () {
                  final forms = context.read<HomeCubit>().formKeys;
                  for (var element in forms) {
                    if (element.currentState!.validate()) {
                      debugPrint('validate');
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
                onPressed: () {
                  context.go('/home/recharge_mainfist');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
