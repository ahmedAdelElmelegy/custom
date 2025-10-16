import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicDataMobileForm extends StatefulWidget {
  const BasicDataMobileForm({super.key});

  @override
  State<BasicDataMobileForm> createState() => _BasicDataMobileFormState();
}

class _BasicDataMobileFormState extends State<BasicDataMobileForm> {
  String? dro1;
  String? dro2;
  String? dro3;
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[4],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInputField(
            label: 'permit_number'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'permit_date'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'permit_issue_date'.tr(),
            validator: (value) => Validator.validateEmpty(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            label: 'transportation_method'.tr(),
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
            label: 'country_of_destination'.tr(),
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
            label: 'wajh_port'.tr(),
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
        ],
      ),
    );
  }
}
