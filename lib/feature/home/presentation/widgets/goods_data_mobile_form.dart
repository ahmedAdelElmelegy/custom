import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoodsDataMobileForm extends StatefulWidget {
  const GoodsDataMobileForm({super.key});

  @override
  State<GoodsDataMobileForm> createState() => _GoodsDataMobileFormState();
}

class _GoodsDataMobileFormState extends State<GoodsDataMobileForm> {
  String? dro1;
  String? dro2;
  String? dro3;
  String? dro4;

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[3],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInputField(
            label: 'type'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'weight_of_the_shipment'.tr(),
            items: ["1", "2", "3"],
            onChanged: (value) {
              setState(() {
                dro1 = value;
              });
            },
            selectedValue: dro1,
            validator: (value) => Validator.validateEmpty(),
            type: InputType.dropdown,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'number_of_cargo'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'unit_of_cargo'.tr(),
            items: ["1", "2", "3"],
            onChanged: (value) {
              setState(() {
                dro2 = value;
              });
            },
            selectedValue: dro2,
            validator: (value) => Validator.validateEmpty(),
            type: InputType.dropdown,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'gross_weight'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'net_weight'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'unit_of_weight'.tr(),
            items: ["1", "2", "3"],
            onChanged: (value) {
              setState(() {
                dro3 = value;
              });
            },
            selectedValue: dro3,
            validator: (value) => Validator.validateEmpty(),
            type: InputType.dropdown,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'volume'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'unit_of_volume'.tr(),
            items: ["1", "2", "3"],
            onChanged: (value) {
              setState(() {
                dro4 = value;
              });
            },
            selectedValue: dro4,
            validator: (value) => Validator.validateEmpty(),
            type: InputType.dropdown,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'cargo_number'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'good_description'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
        ],
      ),
    );
  }
}
