import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_hr/utils/app_colors.dart';
import 'package:we_hr/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kRedColor),
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffE0E0E0),
          ),
        ),
        filled: true,
        fillColor: Color(0xffFAFAFA),
        hintText: 'Search',
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: Color(0xffB3B3B3)),
        suffixIcon: SvgPicture.asset(
          'assets/images/search_icon.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
