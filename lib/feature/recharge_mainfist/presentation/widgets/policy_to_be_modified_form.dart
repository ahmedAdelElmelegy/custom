import 'package:customs/core/helper/constants.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/core/widgets/svg_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PolicyToBeModifiedForm extends StatelessWidget {
  const PolicyToBeModifiedForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'mainfist_number'.tr(),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'mainfist_type'.tr(),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'custom_system'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'mainfist_number'.tr(),
                ),
              ),
              const SizedBox(width: 24),

              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'custom_system'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'mainfist_number'.tr(),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgIcon(path: AppIcons.calender),
                  ),
                ),
              ),
              const SizedBox(width: 24),

              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'custom_system'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  label: 'mainfist_number'.tr(),
                ),
              ),
              const SizedBox(width: 24),

              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'custom_system'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  label: 'mainfist_number'.tr(),
                ),
              ),
              const SizedBox(width: 24),

              Expanded(
                child: CustomInputField(
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'custom_system'.tr(),
                ),
              ),
              const SizedBox(width: 24),
            ],
          ),
          const SizedBox(height: 24),

          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'mainfist_number'.tr(),
                ),
              ),
              const SizedBox(width: 24),

              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'custom_system'.tr(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
