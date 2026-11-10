import 'package:flutter/material.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/core/widgets/custom_elevated_button.dart';
import 'package:space/modules/home/home_view.dart';

class SplashView extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Assets.images.splashBg.image()),

          Positioned(
            left: 24,
            top: MediaQuery.of(context).size.height * 0.4,
            child: const Text(
              'Explore\nThe\nUniverse',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
                height: 1.1,
              ),
            ),
          ),

          Positioned(
            bottom: 48,
            left: 16,
            right: 16,
            child: CustomElevatedButton(
              text: 'Explore',
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeView.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
