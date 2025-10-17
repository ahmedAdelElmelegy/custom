import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/about/profile');
          },
          child: Text('about_us'),
        ),
      ),
    );
  }
}
