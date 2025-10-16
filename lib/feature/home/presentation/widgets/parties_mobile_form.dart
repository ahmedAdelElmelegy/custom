import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartiesMobileForm extends StatefulWidget {
  const PartiesMobileForm({super.key});

  @override
  State<PartiesMobileForm> createState() => _PartiesMobileFormState();
}

class _PartiesMobileFormState extends State<PartiesMobileForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[1],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'agent'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'beneficiary_number'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'beneficiary_name'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'beneficiary_address'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'dangerous_party'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'dangerous_party_address'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'agent_trade'.tr(),
            type: InputType.text,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'agent_trade_placeholder'.tr(),
            type: InputType.text,
          ),
        ],
      ),
    );
  }
}
