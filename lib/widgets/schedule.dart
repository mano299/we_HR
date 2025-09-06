import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/other_list_view.dart';
import 'package:we_hr/widgets/priority_item.dart';
import 'package:we_hr/widgets/schedule_header.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE0E0E0),
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // هنا بدل Expanded خليتها SizedBox بارتفاع محدد
          SizedBox(
            height: 280, // ✅ غير القيمة دي حسب ما يناسبك
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScheduleHeader(),
                    const SizedBox(height: 16),
                    Text(
                      'Priority',
                      style: AppStyles.styleRegular10(context).copyWith(
                        fontSize: getResponsiveFontSize(context, fontSize: 12),
                      ),
                    ),
                    const PriorityItem(
                      title: 'Review candidate applications',
                      subTitle: 'Today - 11.30 AM',
                    ),
                    Text(
                      'Other',
                      style: AppStyles.styleRegular10(context).copyWith(
                        fontSize: getResponsiveFontSize(context, fontSize: 12),
                      ),
                    ),
                    const OtherListView(),
                  ],
                ),
              ),
            ),
          ),

          const Divider(color: Color(0xffE0E0E0)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Center(
              child: Text(
                'Creat a New Schedule',
                style: AppStyles.styleMeduim16(context)
                    .copyWith(color: AppColors.kRedColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
