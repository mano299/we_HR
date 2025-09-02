import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      backgroundColor: Color(0xfffafafa),
      child: Column(
        children: [
          DrawerHeader(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'WeHR',
                style: AppStyles.styleSemiBold36(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
