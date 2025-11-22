import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../core/styles.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.banner,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 0,
            bottom: 0,
            child: Column(
              children: [
                const Spacer(flex: 2),
                Image.asset(AppImages.logo, height: 80),
                const SizedBox(height: 15),
                Text(
                  AppStrings.tagline,
                  style: AppTextStyles.subHeading,
                ),
                const Spacer(flex: 4),
                CustomButton(
                  text: AppStrings.login,
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                const SizedBox(height: 15),
                CustomButton(
                  text: AppStrings.register,
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  isOutlined: true,
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}