import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class GoodsDataForm extends StatefulWidget {
  const GoodsDataForm({super.key});

  @override
  State<GoodsDataForm> createState() => _GoodsDataFormState();
}

class _GoodsDataFormState extends State<GoodsDataForm> {
  String? dro1;
  String? dro2;
  String? dro3;
  String? dro4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                label: 'type'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                label: 'weight_of_the_shipment'.tr(),
                items: ["1", "2", "3"],
                onChanged: (value) {
                  setState(() {
                    dro1 = value;
                  });
                },
                selectedValue: dro1,
                type: InputType.dropdown,
                searchable: true,
                validator: (value) => Validator.validateEmpty(),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                label: 'number_of_cargo'.tr(),
                validator: (value) => Validator.validateEmpty(),
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
                items: ["1", "2", "3"],
                onChanged: (value) {
                  setState(() {
                    dro2 = value;
                  });
                },
                selectedValue: dro2,
                type: InputType.dropdown,
                searchable: true,
                label: 'unit_of_cargo'.tr(),
                validator: (value) => Validator.validateEmpty(),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                label: 'gross_weight'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                label: 'net_weight'.tr(),
                validator: (value) => Validator.validateEmpty(),
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
                items: ["1", "2", "3"],
                onChanged: (value) {
                  setState(() {
                    dro3 = value;
                  });
                },
                selectedValue: dro3,
                type: InputType.dropdown,
                searchable: true,
                label: 'unit_of_weight'.tr(),
                validator: (value) => Validator.validateEmpty(),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                label: 'volume'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                items: ["1", "2", "3"],
                onChanged: (value) {
                  setState(() {
                    dro4 = value;
                  });
                },
                selectedValue: dro4,
                type: InputType.dropdown,
                searchable: true,
                label: 'unit_of_volume'.tr(),
                validator: (value) => Validator.validateEmpty(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: CustomInputField(
                label: 'cargo_number'.tr(),
                validator: (value) => Validator.validateEmpty(),
                type: InputType.text,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: CustomInputField(
                label: 'good_description'.tr(),
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
