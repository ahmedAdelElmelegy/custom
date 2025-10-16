import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  // final void Function(int cityId)? onTapCity;
  final List<String> items;
  final String? Function(String?)? validator;
  final String title;

  const CustomDropDown({
    super.key,
    required this.items,
    this.validator,
    required this.title,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: AppTextStyle.font14Meduim(context)),
        const SizedBox(height: 8),
        DropdownButtonFormField2(
          validator: widget.validator,
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: ColorManager.error),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorManager.gray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorManager.primary),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorManager.error),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorManager.gray),
            ),
          ),

          hint: Text(widget.title, style: AppTextStyle.font14Meduim(context)),
          isExpanded: true,
          value: selectValue,

          style: AppTextStyle.font14Meduim(context),
          items: widget.items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (value) {
            setState(() {
              selectValue = value;
            });
          },
        ),
      ],
    );
  }
}
