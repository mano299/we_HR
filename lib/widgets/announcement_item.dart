import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_hr/utils/app_styles.dart';

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0xffFAFAFA),
        border: Border.all(color: Color(0xffE0E0E0)),
      ),
      child: ListTile(
        title: Text(
          'Outing schedule for every departement',
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text(
            '5 Minutes ago',
            style: AppStyles.styleRegular10(context),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: Transform.rotate(
                angle: .9,
                child: Icon(Icons.push_pin),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }
}
