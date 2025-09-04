import 'package:flutter/material.dart';
import 'package:we_hr/widgets/announcement_header.dart';
import 'package:we_hr/widgets/announcement_items_list_view.dart';

class AnnouncementBody extends StatelessWidget {
  const AnnouncementBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnnouncementHeader(),
          SizedBox(height: 16),
          Expanded(child: AnnouncementItemsListView()),
      ],
    );
  }
}