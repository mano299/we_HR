import 'package:flutter/material.dart';
import 'package:we_hr/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return DrawerItem();
      },
    );
  }
}
