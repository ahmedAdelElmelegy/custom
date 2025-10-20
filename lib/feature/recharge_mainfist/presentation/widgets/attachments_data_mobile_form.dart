import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';

class AttachmentsDataMobileForm extends StatelessWidget {
  const AttachmentsDataMobileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomInputField(
            readOnly: true,
            onTap: () {},
            label: 'bill_of_lading_label'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            readOnly: true,
            onTap: () {},
            label: 'packing_list_label'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            readOnly: true,
            onTap: () {},
            label: 'delivery_permission_label'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            readOnly: true,
            onTap: () {},
            label: 'other_label'.tr(),
            type: InputType.text,
          ),
        ],
      ),
    );
  }
}
