import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDataForm extends StatelessWidget {
  const OrderDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  label: 'reason_of_recharge'.tr(),
                  controller: TextEditingController(),
                  type: InputType.dropdown,
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: CustomInputField(
                  label: 'reason'.tr(),
                  controller: TextEditingController(),
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
                  controller: TextEditingController(),
                  type: InputType.dropdown,
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: CustomInputField(
                  label: 'permit_date'.tr(),
                  controller: TextEditingController(),
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
                  controller: TextEditingController(),
                  type: InputType.dropdown,
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: CustomInputField(
                  label: 'port_of_arrival'.tr(),
                  controller: TextEditingController(),

                  type: InputType.dropdown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
