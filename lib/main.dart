import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:we_hr/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => WeHR(),
  ));
}

class WeHR extends StatelessWidget {
  const WeHR({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeHR',
      home: DashboardView(),
    );
  }
}
