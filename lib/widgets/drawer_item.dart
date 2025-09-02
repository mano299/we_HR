import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.grid_view_rounded,
          color: AppColors.kSecondaryColor,
        ),
        SizedBox(width: 24),
        Text(
          'title',
          style: AppStyles.styleMeduim16(context),
        ),
      ],
    );
  }
}
