import 'package:flutter/material.dart';
import 'package:we_hr/widgets/adaptive_layout.dart';
import 'package:we_hr/widgets/desktop_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
      desktopLayout: (context) => DesktopDashboardLayout(),
    );
  }
}
