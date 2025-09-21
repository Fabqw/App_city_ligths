import 'package:city/screens/auth/login_screen.dart';
import 'package:city/screens/auth/register_screen.dart';
import 'package:city/screens/auth/reset_pass_screen.dart';
import 'package:city/screens/auth/verify_screen.dart';
import 'package:city/screens/pages/admin/principal_dashboard_admin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Lights',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/reset': (context) => const ResetPassScreen(),
        '/register': (context) => const RegisterScreen(),
        '/verify': (context) => const VerifyScreen(),
        '/admin': (context) => const PrincipalDashboardAdmin(),
      },
    );
  }
}
