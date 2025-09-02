import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'WeHR',
                  style: AppStyles.styleSemiBold36(context),
                ),
              ),
            ),
            SizedBox(height: 39),
            Text(
              'MAIN MENU',
              style: AppStyles.styleMeduim12(context),
            ),
            SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }
}
