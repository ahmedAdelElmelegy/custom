import 'package:customs/core/error/validator.dart';
import 'package:customs/core/services/save_search_data.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BillOfLadingForm extends StatefulWidget {
  const BillOfLadingForm({super.key});

  @override
  State<BillOfLadingForm> createState() => _BillOfLadingFormState();
}

class _BillOfLadingFormState extends State<BillOfLadingForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? dro1;
  String? dro2;
  @override
  void initState() {
    debugPrint(getToken());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['1', '2', '3'],
                  label: 'mainfist_number'.tr(),
                  type: InputType.dropdown,
                  selectedValue: getToken(),
                  onChanged: (value) {
                    setState(() => dro1 = value);
                    saveToken(value ?? '');
                  },
                  // onLoadMore: fetchMoreCountries, // Lazy Loading
                  searchable: true,
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'mainfist_type'.tr(),
                  type: InputType.text,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          CustomInputField(
            validator: (value) => Validator.validateEmpty(),
            label: 'policy_number'.tr(),
            type: InputType.text,
          ),

          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  items: ['الإمارات', 'السعودية', 'الكويت'],
                  label: 'country_of_shipping'.tr(),
                  type: InputType.dropdown,
                  selectedValue: dro2,
                  onChanged: (value) => setState(() => dro2 = value),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomInputField(
                  validator: (value) => Validator.validateEmpty(),
                  label: 'port_of_shipping'.tr(),
                  type: InputType.text,
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
                  label: 'port_of_arrival'.tr(),
                  type: InputType.text,
                ),
              ),
              const SizedBox(width: 200),
              CustomBtn(
                text: 'search'.tr(),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    debugPrint('searching');
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
