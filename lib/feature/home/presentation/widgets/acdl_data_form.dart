import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:customs/core/error/validator.dart';
import 'package:flutter/material.dart';

class AcidDataForm extends StatefulWidget {
  const AcidDataForm({super.key});

  @override
  State<AcidDataForm> createState() => _AcidDataFormState();
}

class _AcidDataFormState extends State<AcidDataForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                validator: (value) => Validator.validateEmpty(),
                label: 'acid_data_number'.tr(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                validator: (value) => Validator.validateEmpty(),
                label: 'acid_tax_number'.tr(),
                type: InputType.text,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),

        Row(
          children: [
            Expanded(
              child: CustomInputField(
                validator: (value) => Validator.validateEmpty(),
                label: 'acid_country'.tr(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                validator: (value) => Validator.validateEmpty(),
                label: 'acid_number'.tr(),
                type: InputType.text,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
