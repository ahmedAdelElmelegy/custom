import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AttachmentsDataForm extends StatelessWidget {
  const AttachmentsDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                readOnly: true,
                onTap: () {},
                label: 'bill_of_lading_label'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: CustomInputField(
                readOnly: true,
                onTap: () {},
                label: 'packing_list_label'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                readOnly: true,
                onTap: () {},
                label: 'delivery_permission_label'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: CustomInputField(
                readOnly: true,
                onTap: () {},
                label: 'other_label'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
