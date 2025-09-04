import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class RecentlyActivityBody extends StatelessWidget {
  const RecentlyActivityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '10.40 AM, Fri 10 Sept 2021',
          style: AppStyles.styleMeduim12(context)
              .copyWith(fontSize: 10, color: Colors.white.withOpacity(0.6)),
        ),
        SizedBox(height: 6),
        Text(
          'You Posted a New Job',
          style: AppStyles.styleMeduim18(context),
        ),
        SizedBox(height: 6),
        Text(
          'Kindly check the requirements and terms of work and make sure everything is right.',
          style: AppStyles.styleMeduim16(context)
              .copyWith(color: Colors.white.withOpacity(0.8)),
        ),
        SizedBox(height: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Today you makes 12 Activity',
              style: AppStyles.styleRegular10(context)
                  .copyWith(fontSize: 14, color: Colors.white),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.kRedColor),
              ),
              onPressed: () {},
              child: Text(
                'See All Activity',
                style: AppStyles.styleMeduim16(context)
                    .copyWith(fontSize: 14, color: Colors.white),
              ),
            )
          ],
        )
      ],
    );
  }
}
