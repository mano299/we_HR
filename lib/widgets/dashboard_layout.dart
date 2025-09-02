import 'package:flutter/material.dart';
import 'package:we_hr/widgets/custom_drawer.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomDrawer(),
    );
  }
}
