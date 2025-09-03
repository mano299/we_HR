import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class AnnouncementHeader extends StatelessWidget {
  const AnnouncementHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Announcement',
          style: AppStyles.styleMeduim18(context)
              .copyWith(color: AppColors.kKohlyColor, fontSize: 20),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Color(0xffEFEFEF),
              )),
          child: Row(
            children: [
              Text(
                'Today, 13 Sep 2025',
                style: AppStyles.styleRegular10(context).copyWith(fontSize: 12),
              ),
              Transform.rotate(
                angle: -1.5708,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
