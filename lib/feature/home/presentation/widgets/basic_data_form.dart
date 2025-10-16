import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicDataForm extends StatefulWidget {
  const BasicDataForm({super.key});

  @override
  State<BasicDataForm> createState() => _BasicDataFormState();
}

class _BasicDataFormState extends State<BasicDataForm> {
  String? dro1;
  String? dro2;

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return Form(
      key: homeCubit.formKeys[4],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  label: 'permit_number'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                  type: InputType.text,
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  label: 'permit_date'.tr(),
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
                  label: 'permit_issue_date'.tr(),
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
                      dro1 = value;
                    });
                  },
                  selectedValue: dro1,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'transportation_method'.tr(),
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
                  items: ["1", "2", "3"],
                  onChanged: (value) {
                    setState(() {
                      dro2 = value;
                    });
                  },
                  selectedValue: dro2,
                  type: InputType.dropdown,
                  searchable: true,
                  label: 'country_of_destination'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
              const SizedBox(width: 30),
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
                  label: 'wajh_port'.tr(),
                  validator: (value) => Validator.validateEmpty(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
