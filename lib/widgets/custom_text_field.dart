import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_hr/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffB2B2B2),
          ),
        ),
        filled: true,
        fillColor: Color(0xffFAFAFA),
        hintText: 'Search',
        hintStyle: AppStyles.styleRegular16(context),
        suffixIcon: SvgPicture.asset(
          'assets/images/search_icon.svg',
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
