import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
     this.icon,
    required this.title,
    this.onTap,
  });
  final IconData? icon;
  final String title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        CustomIconForAppBar(
          onTap: onTap,
          icon: icon,
        ),
      ],
    );
  }
}
