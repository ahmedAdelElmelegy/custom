import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AcidDataMobileForm extends StatefulWidget {
  const AcidDataMobileForm({super.key});

  @override
  State<AcidDataMobileForm> createState() => _AcidDataMobileFormState();
}

class _AcidDataMobileFormState extends State<AcidDataMobileForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'acid_data_number'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'acid_tax_number'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'acid_country'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'acid_number'.tr(),
          type: InputType.text,
        ),
      ],
    );
  }
}
