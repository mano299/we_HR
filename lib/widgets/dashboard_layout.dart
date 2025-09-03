import 'package:flutter/material.dart';
import 'package:we_hr/widgets/custom_drawer.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 50),
          Expanded(flex: 5, child: SizedBox()),
        ],
      ),
    );
  }
}
