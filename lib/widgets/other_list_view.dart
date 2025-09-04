import 'package:flutter/material.dart';
import 'package:we_hr/widgets/priority_item.dart';

class OtherListView extends StatelessWidget {
  const OtherListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return PriorityItem(
          title: 'Interview with candidates',
          subTitle: 'Today - 10.30 AM',
        );
      },
    );
  }
}
