import 'package:flutter/material.dart';
import 'package:we_hr/models/custom_container_model.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/widgets/custom_container.dart';

class OverallContainers extends StatelessWidget {
  const OverallContainers({super.key});
  static const List<CustomContainerModel> items = [
    CustomContainerModel(
      color: Color(0xffFFEFE7),
      title: 'Available Position',
      number: '24',
      state: '4 Urgently needed',
      stateColor: AppColors.kRedColor,
    ),
    CustomContainerModel(
      color: Color(0xffE8F0FB),
      title: 'Job Open',
      number: '10',
      state: '4 Active hiring',
      stateColor: Color(0xff3786F1),
    ),
    CustomContainerModel(
      color: Color(0xffFDEBF9),
      title: 'New Employees',
      number: '24',
      state: '4 Department',
      stateColor: Color(0xffEE61CF),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map(
            (e) => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: CustomContainer(containerModel: e),
              ),
            ),
          )
          .toList(),
    );
  }
}
