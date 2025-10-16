import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  const NavBarItem({
    required this.title,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  @override
  State<NavBarItem> createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      cursor: SystemMouseCursors.click,

      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isHovering || widget.isActive
                    ? ColorManager.primary
                    : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Text(
            widget.title,
            style: AppTextStyle.font16Meduim(
              context,
            ).copyWith(color: isHovering ? ColorManager.primary : Colors.black),
          ),
        ),
      ),
    );
  }
}
