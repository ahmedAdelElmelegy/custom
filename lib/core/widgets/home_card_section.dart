import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:flutter/material.dart';

class HomeCardSection extends StatefulWidget {
  final String title;
  final Widget child;
  const HomeCardSection({super.key, required this.title, required this.child});

  @override
  State<HomeCardSection> createState() => _HomeCardSectionState();
}

class _HomeCardSectionState extends State<HomeCardSection> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: ColorManager.primary.withValues(alpha: .1),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border(
                top: BorderSide(
                  color: ColorManager.gray.withValues(alpha: .2),
                  width: 1,
                ),
                left: BorderSide(
                  color: ColorManager.gray.withValues(alpha: .2),
                  width: 1,
                ),
                right: BorderSide(
                  color: ColorManager.gray.withValues(alpha: .2),
                  width: 1,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: ColorManager.gray.withValues(alpha: .2),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
              color: ColorManager.grayLight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: AppTextStyle.font16Bold(context)),
                AnimatedRotation(
                  turns: isExpanded ? 0.25 : 0,
                  duration: const Duration(milliseconds: 200),

                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: ColorManager.gray,
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            width: double.infinity,
            height: !isExpanded ? 0 : null,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: ColorManager.white,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.gray.withValues(alpha: .2),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
              border: Border(
                bottom: BorderSide(
                  color: ColorManager.gray.withValues(alpha: .2),
                  width: 1,
                ),
                left: BorderSide(
                  color: ColorManager.gray.withValues(alpha: .2),
                  width: 1,
                ),
                right: BorderSide(
                  color: ColorManager.gray.withValues(alpha: .2),
                  width: 1,
                ),
              ),
            ),
            child: isExpanded ? widget.child : null,
          ),
        ),
      ],
    );
  }
}
