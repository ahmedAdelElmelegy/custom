import 'package:customs/core/error/validator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';

class AttachmentsDataMobileForm extends StatelessWidget {
  const AttachmentsDataMobileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          readOnly: true,
          onTap: () {},
          validator: (value) => Validator.validateEmpty(),
          label: 'bill_of_lading_label'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          readOnly: true,
          onTap: () {},
          validator: (value) => Validator.validateEmpty(),
          label: 'packing_list_label'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          readOnly: true,
          onTap: () {},
          validator: (value) => Validator.validateEmpty(),
          label: 'delivery_permission_label'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          readOnly: true,
          onTap: () {},
          validator: (value) => Validator.validateEmpty(),
          label: 'other_label'.tr(),
          type: InputType.text,
        ),
      ],
    );
  }
}
