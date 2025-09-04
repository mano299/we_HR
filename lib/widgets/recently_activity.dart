import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/recently_activity_body.dart';

class RecentlyActivity extends StatelessWidget {
  const RecentlyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kKohlyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff1B204A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(
                'Recently Activity',
                style: AppStyles.styleMeduim18(context),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 26),
            child: RecentlyActivityBody(),
          )
        ],
      ),
    );
  }
}
