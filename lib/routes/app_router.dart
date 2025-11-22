import 'package:flutter/material.dart';
import '../screens/welcome_screen2.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/otp_screen.dart';
import '../screens/create_new_password_screen.dart';
import '../screens/password_changed_screen.dart';
import '../screens/home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const WelcomeScreen2());
      case '/welcome2':
        return MaterialPageRoute(builder: (_) => const WelcomeScreen2());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case '/forgot':
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case '/otp':
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case '/new_password':
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
      case '/password_changed':
        return MaterialPageRoute(builder: (_) => const PasswordChangedScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
