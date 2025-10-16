import 'package:customs/core/error/validator.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AcidDataMobileForm extends StatefulWidget {
  const AcidDataMobileForm({super.key});

  @override
  State<AcidDataMobileForm> createState() => _AcidDataMobileFormState();
}

class _AcidDataMobileFormState extends State<AcidDataMobileForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = context.read<HomeCubit>().formKeys;

    return Form(
      key: formKey[2],
      child: Column(
        children: [
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'acid_data_number'.tr(),
            type: InputType.text,
          ),
          const SizedBox(width: 30),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'acid_tax_number'.tr(),
            type: InputType.text,
          ),
          const SizedBox(width: 30),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'acid_country'.tr(),
            type: InputType.text,
          ),
          const SizedBox(width: 30),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'acid_number'.tr(),
            type: InputType.text,
          ),
        ],
      ),
    );
  }
}
