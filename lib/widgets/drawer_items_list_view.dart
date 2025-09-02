import 'package:flutter/material.dart';
import 'package:we_hr/models/drawer_item_model.dart';
import 'package:we_hr/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  List<DrawerItemModel> items = const [
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

  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (isSelected != index) {
              isSelected = index;
              setState(() {});
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: DrawerItem(
              isActive: isSelected == index,
              icon: items[index].icon,
              title: items[index].title,
            ),
          ),
        );
      },
    );
  }
}
