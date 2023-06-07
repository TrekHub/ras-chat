import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ras_chat/providers/auth_provider.dart';
import 'package:ras_chat/ui/auth/login_screen.dart';
import 'package:ras_chat/ui/auth/spalsh_screen.dart';
import 'package:ras_chat/ui/dashboard/home_screen.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return authState.when(
        data: (user) {
          if (user != null) return const HomeScreen();

          return LoginScreen();
        },
        error: (e, stackTrace) => LoginScreen(),
        loading: () => const SplashScreen());
  }
}
