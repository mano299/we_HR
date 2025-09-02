import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
  });
  final IconData icon;
  final String title;

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: isActive ? AppColors.kRedColor : AppColors.kSecondaryColor,
        ),
        SizedBox(width: 24),
        Text(
          title,
          style: AppStyles.styleRegular16(context).copyWith(
              color:
                  isActive ? AppColors.kRedColor : AppColors.kSecondaryColor),
        ),
      ],
    );
  }
}
