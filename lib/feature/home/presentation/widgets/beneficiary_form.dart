import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeneficiaryForm extends StatefulWidget {
  const BeneficiaryForm({super.key});

  @override
  State<BeneficiaryForm> createState() => _BeneficiaryFormState();
}

class _BeneficiaryFormState extends State<BeneficiaryForm> {
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
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[0],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'mainfist_number'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'policy_number'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro1 = value;
                    });
                  },
                  selectedValue: dro1,
                  label: 'custom_system'.tr(),
                  searchable: true,
                  type: InputType.dropdown,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  validator: (value) => Validator.validateEmpty(),
                  label: 'policy_number'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro2 = value;
                    });
                  },
                  selectedValue: dro2,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'policy_collect_type'.tr(),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  type: InputType.text,
                  label: 'date_of_shipping'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro3 = value;
                    });
                  },
                  selectedValue: dro3,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'country_of_shipping'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro4 = value;
                    });
                  },
                  selectedValue: dro4,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'port_of_shipping'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro5 = value;
                    });
                  },
                  selectedValue: dro5,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'port_of_arrival'.tr(),
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
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro6 = value;
                    });
                  },
                  selectedValue: dro6,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'shipping_direction'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro7 = value;
                    });
                  },
                  selectedValue: dro7,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'port_of_transit'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro8 = value;
                    });
                  },
                  selectedValue: dro8,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'delivery_type'.tr(),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  onChanged: (value) {
                    setState(() {
                      dro9 = value;
                    });
                  },
                  selectedValue: dro9,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'danger_indicator'.tr(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          CustomInputField(
            type: InputType.text,
            validator: (value) => Validator.validateEmpty(),
            label: 'notes'.tr(),
            onChanged: (value) {
              setState(() {
                dro10 = value;
              });
            },
            selectedValue: dro10,
          ),
          const SizedBox(height: 30),
          CustomInputField(
            type: InputType.text,
            validator: (value) => Validator.validateEmpty(),
            label: 'goods_description'.tr(),
          ),
        ],
      ),
    );
  }
}
