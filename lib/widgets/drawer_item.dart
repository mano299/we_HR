import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.kSecondaryColor,
        ),
        SizedBox(width: 24),
        Text(
          title,
          style: AppStyles.styleRegular16(context),
        ),
      ],
    );
  }
}
