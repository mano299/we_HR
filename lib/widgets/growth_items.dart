import 'package:flutter/material.dart';
import 'package:we_hr/models/growth_container_model.dart';
import 'package:we_hr/widgets/growth_container.dart';

class GrowthItems extends StatelessWidget {
  const GrowthItems({super.key});
  static const List<GrowthContainerModel> items = [
    GrowthContainerModel(
      title: 'Total Employees',
      number: '216',
      men: '120 Men',
      women: '96 Women',
      image: 'assets/images/totalEmployees.svg',
    ),
    GrowthContainerModel(
      title: 'Talent Request',
      number: '16',
      men: '6 Men',
      women: '10 Women',
      image: 'assets/images/talenRequest.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return Expanded(
          child: Padding(
            padding:
                EdgeInsets.only(right: index < items.length - 1 ? 12.0 : 0),
            child: GrowthContainer(growthContainerModel: item),
          ),
        );
      }).toList(),
    );
  }
}
