import 'package:customs/core/utils/design_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobilelayout,
    required this.desktopLayout,
    required this.tabletLayout,
  });
  final Widget Function(BuildContext context) mobilelayout,
      desktopLayout,
      tabletLayout;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobilelayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
