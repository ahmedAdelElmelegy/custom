import 'package:customs/core/error/validator.dart';
import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDataMobileForm extends StatelessWidget {
  const OrderDataMobileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          label: 'reason_of_recharge'.tr(),
          validator: (value) => Validator.validateEmpty(),
          controller: TextEditingController(),
          type: InputType.dropdown,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          label: 'reason'.tr(),
          controller: TextEditingController(),
          validator: (value) => Validator.validateEmpty(),
          type: InputType.text,
        ),
        SizedBox(height: 16),
        CustomInputField(
          label: 'transportation_method'.tr(),
          controller: TextEditingController(),
          validator: (value) => Validator.validateEmpty(),
          type: InputType.dropdown,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          label: 'permit_date'.tr(),
          controller: TextEditingController(),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgIcon(path: AppIcons.calender),
          ),
          validator: (value) => Validator.validateEmpty(),
          type: InputType.text,
        ),

        SizedBox(height: 16),
        CustomInputField(
          label: 'country_of_arrival'.tr(),
          controller: TextEditingController(),
          validator: (value) => Validator.validateEmpty(),
          type: InputType.dropdown,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          label: 'port_of_arrival'.tr(),
          controller: TextEditingController(),
          validator: (value) => Validator.validateEmpty(),
          type: InputType.dropdown,
        ),
      ],
    );
  }
}
