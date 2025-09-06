import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/announcement.dart';
import 'package:we_hr/widgets/custom_app_bar.dart';
import 'package:we_hr/widgets/custom_drawer.dart';
import 'package:we_hr/widgets/growth_items.dart';
import 'package:we_hr/widgets/overall_containers.dart';
import 'package:we_hr/widgets/recently_activity.dart';
import 'package:we_hr/widgets/schedule.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Drawer على الشمال
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),

          const SizedBox(width: 52),

          // باقي الصفحة
          Expanded(
            flex: 4,
            child: Column(
              children: [
                const SizedBox(height: 12.5),
                const CustomAppbar(isTablet: true),

                // المحتوى كله Scrollable
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),

                        // العنوان
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Dashboard',
                            style: AppStyles.styleMeduim36(context)
                                .copyWith(fontSize: 24),
                          ),
                        ),

                        // العناصر الأساسية
                        const OverallContainers(),
                        const SizedBox(height: 20),
                        const GrowthItems(),
                        const SizedBox(height: 20),
                        const Announcement(),
                        const SizedBox(height: 20),

                        // Activity section
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Flexible(
                              flex: 2,
                              fit: FlexFit.loose,
                              child: RecentlyActivity(),
                            ),
                            SizedBox(width: 20),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Schedule(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 52),
        ],
      ),
    );
  }
}
