import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BeneficiaryMobileForm extends StatefulWidget {
  const BeneficiaryMobileForm({super.key});

  @override
  State<BeneficiaryMobileForm> createState() => _BeneficiaryMobileFormState();
}

class _BeneficiaryMobileFormState extends State<BeneficiaryMobileForm> {
  String? dro1;
  String? dro2;
  String? dro3;
  String? dro4;
  String? dro5;
  String? dro6;
  String? dro7;
  String? dro8;
  String? dro9;
  String? dro10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'mainfist_number'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'policy_number'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro1 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'custom_system'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro2 = value;
            });
          },
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
          items: ['1', '2', '3'],
          label: 'policy_collect_type'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro3 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          label: 'date_of_shipping'.tr(),
          validator: (value) => Validator.validateEmpty(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'country_of_shipping'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro4 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'port_of_shipping'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro5 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'port_of_arrival'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro6 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'shipping_direction'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro7 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'port_of_transit'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro8 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'delivery_type'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro9 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          items: ['1', '2', '3'],
          label: 'danger_indicator'.tr(),
          type: InputType.dropdown,
          onChanged: (value) {
            setState(() {
              dro10 = value;
            });
          },
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'notes'.tr(),
          type: InputType.text,
        ),
        const SizedBox(height: 16),
        CustomInputField(
          validator: (value) => Validator.validateEmpty(),
          label: 'goods_description'.tr(),
          type: InputType.text,
        ),
      ],
    );
  }
}
