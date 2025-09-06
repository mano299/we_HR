import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class ScheduleHeader extends StatelessWidget {
  const ScheduleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            'Upcoming Schedule',
            style: AppStyles.styleMeduim18(context)
                .copyWith(color: AppColors.kKohlyColor),
          ),
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
