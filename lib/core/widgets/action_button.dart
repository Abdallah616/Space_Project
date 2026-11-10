import 'package:flutter/material.dart';
import 'package:space/core/theme/app_colors.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const ActionButton({
    super.key,
    required this.onPressed,
    this.icon = Icons.arrow_forward,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.red,
        foregroundColor: AppColors.white,
        elevation: 0,
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
      ),
      child: Icon(icon, size: 22),
    );
  }
}
