import 'package:flutter/material.dart';
import 'package:we_hr/widgets/custom_app_bar.dart';
import 'package:we_hr/widgets/custom_drawer.dart';

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
                  CustomAppbar(isTablet: true,),
                ],
              ))
        ],
      ),
    );
  }
}
