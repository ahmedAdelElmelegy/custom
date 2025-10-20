import 'package:customs/core/error/validator.dart';
import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDataForm extends StatelessWidget {
  const OrderDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                label: 'reason_of_recharge'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.dropdown,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: CustomInputField(
                label: 'reason'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                label: 'transportation_method'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.dropdown,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: CustomInputField(
                label: 'permit_date'.tr(),
                validator: (value) => Validator.validateEmpty(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgIcon(path: AppIcons.calender),
                ),
                type: InputType.text,
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                label: 'country_of_arrival'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.dropdown,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: CustomInputField(
                label: 'port_of_arrival'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.dropdown,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
