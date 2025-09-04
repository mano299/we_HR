import 'package:flutter/material.dart';
import 'package:we_hr/widgets/recently_activity.dart';
import 'package:we_hr/widgets/schedule.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 64),
        RecentlyActivity(),
        SizedBox(height: 30),
        Expanded(child: Schedule()),
        SizedBox(height: 34),
      ],
    );
  }
}
