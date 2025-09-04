import 'package:flutter/material.dart';
import 'package:we_hr/utils/app_styles.dart';


class PriorityItem extends StatelessWidget {
  const PriorityItem({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0xffFAFAFA),
        border: Border.all(color: Color(0xffE0E0E0)),
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text(
            subTitle,
            style: AppStyles.styleRegular10(context),
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Color(0xffB2B2B2),
          ),
        ),
      ),
    );
  }
}
