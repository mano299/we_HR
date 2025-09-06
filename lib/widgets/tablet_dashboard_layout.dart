import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/custom_app_bar.dart';
import 'package:we_hr/widgets/custom_drawer.dart';
import 'package:we_hr/widgets/growth_items.dart';
import 'package:we_hr/widgets/overall_containers.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          SizedBox(width: 52),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                CustomAppbar(isTablet: true),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Dashboard',
                            style: AppStyles.styleMeduim36(context)
                                .copyWith(fontSize: 24),
                          ),
                        ),
                        OverallContainers(),
                        SizedBox(height: 20),
                        GrowthItems(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 52),
        ],
      ),
    );
  }
}
