import 'package:customs/feature/update_mainfist/presentation/screens/update_mainfist_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [UpdateMainfistBody(), SizedBox(height: 200)]);
  }
}
