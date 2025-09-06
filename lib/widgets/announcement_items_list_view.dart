import 'package:flutter/material.dart';
import 'package:we_hr/widgets/announcement_item.dart';

class AnnouncementItemsListView extends StatelessWidget {
  const AnnouncementItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: AnnouncementItem(),
        );
      },
    );
  }
}
