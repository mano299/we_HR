import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/drawer_item.dart';
import 'package:we_hr/widgets/drawer_items_list_view.dart';
import 'package:we_hr/widgets/second_drawer_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfffafafa),
      padding: const EdgeInsets.only(left: 30.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'WeHR',
                  style: AppStyles.styleSemiBold36(context),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 39)),
          SliverToBoxAdapter(
            child: Text(
              'MAIN MENU',
              style: AppStyles.styleMeduim12(context),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          DrawerItemsListView(),
          const SliverToBoxAdapter(child: SizedBox(height: 39)),
          const SliverToBoxAdapter(child: SecondDrawerSection()),
        ],
      ),
    );
  }
}

