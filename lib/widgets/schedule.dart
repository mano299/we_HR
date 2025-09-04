import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/other_list_view.dart';
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
      child: SingleChildScrollView(
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
              OtherListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class PriorityItem extends StatelessWidget {
  const PriorityItem({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0xffFAFAFA),
        border: Border.all(color: Color(0xffE0E0E0)),
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text(
            subTitle,
            style: AppStyles.styleRegular10(context),
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Color(0xffB2B2B2),
          ),
        ),
      ),
    );
  }
}
