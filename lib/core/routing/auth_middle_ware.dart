import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthService {
  static bool isAuthenticated = false;
  static bool hasSeenOnboarding = false;
  static bool hasSeenSplash = false;

  // Track navigation history for web
}

class AuthMiddleware {
  static String? redirect(BuildContext context, GoRouterState state) {
    final currentLocation = state.matchedLocation;
    final isGoingToSplash = currentLocation == '/splash';
    final isGoingToHome = currentLocation == '/home';
    final isGoingToLogin = currentLocation == '/login';
    debugPrint('🔀 Web Redirect triggered: $currentLocation');
    debugPrint('🔐 Auth status: ${AuthService.isAuthenticated}');

    if (isGoingToSplash) {
      AuthService.hasSeenSplash = true;
      return null;
    }
    // 🚫 Block unauthenticated users from accessing home
    if (!AuthService.isAuthenticated && isGoingToHome) {
      return '/login';
    }

    // ✅ Prevent logged-in users from going back to login
    if (AuthService.isAuthenticated && isGoingToLogin) {
      return '/home';
    }

    return null;
  }
}
