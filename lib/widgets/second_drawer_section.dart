import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/drawer_item.dart';

class SecondDrawerSection extends StatelessWidget {
  const SecondDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'OTHER',
            style: AppStyles.styleMeduim12(context),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: DrawerItem(
            isActive: false,
            icon: Icons.support_agent,
            title: 'Support',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: DrawerItem(
            isActive: false,
            icon: Icons.settings,
            title: 'Settings',
          ),
        ),
      ],
    );
  }
}
