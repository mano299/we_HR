import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_hr/models/growth_container_model.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class GrowthContainer extends StatelessWidget {
  const GrowthContainer({super.key, required this.growthContainerModel});
  final GrowthContainerModel growthContainerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xffE0E0E0),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                growthContainerModel.title,
                style: AppStyles.styleMeduim18(context)
                    .copyWith(color: AppColors.kKohlyColor),
              ),
              SizedBox(height: 20),
              Text(
                growthContainerModel.number,
                style: AppStyles.styleMeduim48(context),
              ),
              SizedBox(height: 32),
              Text(
                growthContainerModel.men,
                style: AppStyles.styleMeduim12(context),
              ),
              Text(
                growthContainerModel.women,
                style: AppStyles.styleMeduim12(context),
              ),
            ],
          ),
          SvgPicture.asset(
            fit: BoxFit.contain,
            growthContainerModel.image,
          ),
        ],
      ),
    );
  }
}
