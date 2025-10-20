import 'package:customs/core/error/validator.dart';
import 'package:flutter/material.dart';
import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';

class PolicyToBeModifiedMobileForm extends StatefulWidget {
  const PolicyToBeModifiedMobileForm({super.key});

  @override
  State<PolicyToBeModifiedMobileForm> createState() =>
      _PolicyToBeModifiedMobileFormState();
}

class _PolicyToBeModifiedMobileFormState
    extends State<PolicyToBeModifiedMobileForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          type: InputType.text,
          label: 'mainfist_number'.tr(),
          validator: (value) => Validator.validateEmpty(),
        ),
        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),

          label: 'mainfist_type'.tr(),
        ),
        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),
          label: 'custom_system'.tr(),
        ),
        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.text,
          label: 'mainfist_number'.tr(),
          validator: (value) => Validator.validateEmpty(),
        ),
        const SizedBox(height: 16),

        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),
          label: 'custom_system'.tr(),
        ),
        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.text,
          label: 'mainfist_number'.tr(),
          validator: (value) => Validator.validateEmpty(),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgIcon(path: AppIcons.calender),
          ),
        ),

        const SizedBox(height: 16),

        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),
          label: 'custom_system'.tr(),
        ),

        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),
          label: 'custom_system'.tr(),
        ),
        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.dropdown,
          label: 'mainfist_number'.tr(),
          validator: (value) => Validator.validateEmpty(),
        ),

        const SizedBox(height: 16),

        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),
          label: 'custom_system'.tr(),
        ),

        const SizedBox(height: 16),
        CustomInputField(
          type: InputType.dropdown,
          label: 'mainfist_number'.tr(),
          validator: (value) => Validator.validateEmpty(),
        ),

        const SizedBox(height: 16),

        CustomInputField(
          type: InputType.dropdown,
          searchable: true,
          validator: (value) => Validator.validateEmpty(),
          label: 'custom_system'.tr(),
        ),

        const SizedBox(height: 16),

        CustomInputField(
          type: InputType.text,
          label: 'mainfist_number'.tr(),
          validator: (value) => Validator.validateEmpty(),
        ),
        const SizedBox(height: 16),

        CustomInputField(
          type: InputType.text,
          label: 'custom_system'.tr(),
          validator: (value) => Validator.validateEmpty(),
        ),
      ],
    );
  }
}
