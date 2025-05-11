import 'package:flutter/material.dart';

class CustomIconForAppBar extends StatelessWidget {
  const CustomIconForAppBar({
    super.key,
    this.icon,
    this.onTap,
  });
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: icon == null
              ? Colors.transparent
              : Colors.white.withValues(alpha: .05),
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
