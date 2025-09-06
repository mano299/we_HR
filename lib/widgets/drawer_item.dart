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
    // ناخد عرض الشاشة ونحسب الخط كنسبة
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = (screenWidth * 0.012).clamp(10, 16);
    // 👆 هنا 10 أقل حجم، 16 أكبر حجم

    return Row(
      children: [
        Icon(
          icon,
          size: fontSize + 4, // حتى الأيقونة تصغر/تكبر مع الخط
          color: isActive ? AppColors.kRedColor : AppColors.kSecondaryColor,
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            title,
            style: AppStyles.styleRegular16(context).copyWith(
              fontSize: fontSize,
              color: isActive ? AppColors.kRedColor : AppColors.kSecondaryColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.visible, // 👈 مش هيحط إبس
            softWrap: false, // 👈 يخلي النص سطر واحد بس
          ),
        ),
      ],
    );
  }
}
