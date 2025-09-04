import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/activity_section.dart';
import 'package:we_hr/widgets/announcement.dart';
import 'package:we_hr/widgets/custom_app_bar.dart';
import 'package:we_hr/widgets/custom_drawer.dart';
import 'package:we_hr/widgets/growth_items.dart';
import 'package:we_hr/widgets/overall_containers.dart';
import 'package:we_hr/widgets/schedule.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          SizedBox(width: 50),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: CustomAppbar(),
                ),
                Divider(color: Color(0xffF1F1F1)),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Dashboard',
                                style: AppStyles.styleMeduim36(context)
                                    .copyWith(fontSize: 24),
                              ),
                            ),
                            OverallContainers(),
                            SizedBox(height: 20),
                            GrowthItems(),
                            SizedBox(height: 20),
                            Expanded(child: Announcement()),
                            SizedBox(height: 34),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Column(
                            children: [
                              ActivitySection(),
                              SizedBox(height: 30),
                              Schedule(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
