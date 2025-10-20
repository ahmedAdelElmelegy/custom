import 'package:flutter/material.dart';
import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PolicyToBeModifiedMobileForm extends StatelessWidget {
  const PolicyToBeModifiedMobileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomInputField(type: InputType.text, label: 'mainfist_number'.tr()),
          const SizedBox(height: 16),
          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'mainfist_type'.tr(),
          ),
          const SizedBox(height: 16),
          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'custom_system'.tr(),
          ),
          const SizedBox(height: 16),
          CustomInputField(type: InputType.text, label: 'mainfist_number'.tr()),
          const SizedBox(height: 16),

          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'custom_system'.tr(),
          ),
          const SizedBox(height: 16),
          CustomInputField(
            type: InputType.text,
            label: 'mainfist_number'.tr(),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgIcon(path: AppIcons.calender),
            ),
          ),

          const SizedBox(height: 16),

          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'custom_system'.tr(),
          ),

          const SizedBox(height: 16),
          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'custom_system'.tr(),
          ),
          const SizedBox(height: 16),
          CustomInputField(
            type: InputType.dropdown,
            label: 'mainfist_number'.tr(),
          ),

          const SizedBox(height: 16),

          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'custom_system'.tr(),
          ),

          const SizedBox(height: 16),
          CustomInputField(
            type: InputType.dropdown,
            label: 'mainfist_number'.tr(),
          ),

          const SizedBox(height: 16),

          CustomInputField(
            type: InputType.dropdown,
            searchable: true,
            label: 'custom_system'.tr(),
          ),

          const SizedBox(height: 16),

          CustomInputField(type: InputType.text, label: 'mainfist_number'.tr()),
          const SizedBox(height: 16),

          CustomInputField(type: InputType.text, label: 'custom_system'.tr()),
        ],
      ),
    );
  }
}
