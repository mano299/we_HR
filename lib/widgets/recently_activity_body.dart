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
        const SizedBox(height: 6),
        Text(
          'You Posted a New Job',
          style: AppStyles.styleMeduim18(context),
        ),
        const SizedBox(height: 6),
        Text(
          'Kindly check the requirements and terms of work and make sure everything is right.',
          style: AppStyles.styleMeduim16(context)
              .copyWith(color: Colors.white.withOpacity(0.8)),
        ),
        const SizedBox(height: 28),
        Row(
          children: [
            Flexible(
              child: Text(
                'Today you makes 12 Activity',
                style: AppStyles.styleRegular10(context)
                    .copyWith(fontSize: 14, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kRedColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              ),
              onPressed: () {},
              child: Text(
                'See All Activity',
                style: AppStyles.styleMeduim16(context)
                    .copyWith(fontSize: 14, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        )
      ],
    );
  }
}
