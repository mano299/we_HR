import 'package:flutter/material.dart';
import 'package:we_hr/models/drawer_item_model.dart';
import 'package:we_hr/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});
  static List<DrawerItemModel> items = const [
    DrawerItemModel(
      title: 'Dashboard',
      icon: Icons.grid_view_rounded,
    ),
    DrawerItemModel(
      title: 'Recruitment',
      icon: Icons.person_add_alt_1,
    ),
    DrawerItemModel(
      title: 'Schedule',
      icon: Icons.calendar_month_outlined,
    ),
    DrawerItemModel(
      title: 'Employee',
      icon: Icons.group_sharp,
    ),
    DrawerItemModel(
      title: 'Department',
      icon: Icons.crisis_alert_outlined,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DrawerItem(
          icon: items[index].icon,
          title: items[index].title,
        );
      },
    );
  }
}
