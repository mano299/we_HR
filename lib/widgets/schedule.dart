import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/priority_item.dart';
import 'package:we_hr/widgets/schedule_header.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE0E0E0),
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScheduleHeader(),
            SizedBox(height: 16),
            Text(
              'Priority',
              style: AppStyles.styleRegular10(context).copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 12)),
            ),
            PriorityItem(
              title: 'Review candidate applications',
              subTitle: 'Today - 11.30 AM',
            ),
            Text(
              'Other',
              style: AppStyles.styleRegular10(context).copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
