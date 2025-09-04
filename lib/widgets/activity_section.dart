import 'package:flutter/material.dart';
import 'package:we_hr/widgets/recently_activity.dart';

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
      ],
    );
  }
}
