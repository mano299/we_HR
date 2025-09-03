import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';
import 'package:we_hr/widgets/custom_text_field.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 55),
      child: Row(
        children: [
          Expanded(child: CustomTextField()),
          Spacer(),
          SvgPicture.asset('assets/images/notifications.svg'),
          SizedBox(width: 32),
          SvgPicture.asset('assets/images/message.svg'),
          SizedBox(width: 30),
          CircleAvatar(
            backgroundColor: Colors.black,
            maxRadius: 20,
          ),
          SizedBox(width: 12),
          Text(
            'Admirra John',
            style: AppStyles.styleMeduim16(context)
                .copyWith(color: AppColors.kKohlyColor),
          ),
          Transform.rotate(
            angle: -1.5708,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
