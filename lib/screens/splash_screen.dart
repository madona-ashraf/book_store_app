import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../core/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // بعد 2 ثانية يدخل على صفحة Welcome 2
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo, height: 100),
            const SizedBox(height: 16),
            Text(
              AppStrings.tagline,
              style: AppTextStyles.subHeading,
            ),
          ],
        ),
      ),
    );
  }
}
