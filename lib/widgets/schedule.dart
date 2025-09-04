import 'package:flutter/material.dart';
import 'package:we_hr/widgets/schedule_header.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE0E0E0),
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
        child: Column(
          children: [
            ScheduleHeader(),
          ],
        ),
      ),
    );
  }
}
