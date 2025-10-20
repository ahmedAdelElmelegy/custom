import 'package:flutter/material.dart';

class RechargeMainfistGradientColor extends StatelessWidget {
  const RechargeMainfistGradientColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withValues(alpha: 0.3),
            Colors.black.withValues(alpha: 0.7),
          ],
        ),
      ),
    );
  }
}
