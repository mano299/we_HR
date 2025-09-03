import 'package:flutter/material.dart';
import 'package:we_hr/models/custom_container_model.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.containerModel});
  final CustomContainerModel containerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: containerModel.color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            containerModel.title,
            style: AppStyles.styleMeduim18(context)
                .copyWith(color: AppColors.kKohlyColor),
          ),
          Text(
            containerModel.number,
            style: AppStyles.styleMeduim36(context),
          ),
          Text(
            containerModel.state,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: containerModel.stateColor),
          ),
        ],
      ),
    );
  }
}
