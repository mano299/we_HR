import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/announcement_body.dart';
import 'package:we_hr/widgets/announcement_items_list_view.dart';
import 'package:we_hr/widgets/announcement_header.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});

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
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 16, right: 20, left: 20),
              child: AnnouncementBody(),
            ),
          ),
          Divider(color: Color(0xffE0E0E0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'See All Announcement',
              style: AppStyles.styleMeduim16(context)
                  .copyWith(color: AppColors.kRedColor),
            ),
          )
        ],
      ),
    );
  }
}
