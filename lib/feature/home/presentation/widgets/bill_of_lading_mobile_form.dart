import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:easy_localization/easy_localization.dart';

class BillOfLadingMobileForm extends StatefulWidget {
  const BillOfLadingMobileForm({super.key});

  @override
  State<BillOfLadingMobileForm> createState() => _BillOfLadingMobileFormState();
}

class _BillOfLadingMobileFormState extends State<BillOfLadingMobileForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? dro1;
  String? dro2;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            searchable: true,
            items: ['1', '2', '3'],
            label: 'mainfist_number'.tr(),
            type: InputType.dropdown,
            selectedValue: dro1,
            onChanged: (value) => setState(() => dro1 = value),
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'mainfist_type'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'policy_number'.tr(),
            type: InputType.text,
          ),

          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            items: ['الإمارات', 'السعودية', 'الكويت'],
            label: 'country_of_shipping'.tr(),
            type: InputType.dropdown,
            selectedValue: dro2,
            searchable: true,
            onChanged: (value) => setState(() => dro2 = value),
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'port_of_shipping'.tr(),
            type: InputType.text,
          ),

          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'port_of_arrival'.tr(),
                  type: InputType.text,
                ),
              ),
              const SizedBox(width: 20),
              CustomBtn(
                text: 'search'.tr(),
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
