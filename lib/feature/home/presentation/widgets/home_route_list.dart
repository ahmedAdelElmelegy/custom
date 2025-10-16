import 'package:customs/core/utils/app_constants.dart';
import 'package:customs/feature/home/presentation/widgets/home_route_item.dart';
import 'package:flutter/material.dart';

class HomeRouteList extends StatelessWidget {
  const HomeRouteList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .03,
      child: ListView.builder(
        itemCount: size.width < 600 ? 1 : AppConstants.routes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomeRouteItem(index: index, routeList: AppConstants.routes);
        },
      ),
    );
  }
}
