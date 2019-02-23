import 'package:flutter/material.dart';
import 'package:to_do_app_profile_template/utils/theme.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String title;
  final String desc;

  const ProfileHeaderWidget({Key key, this.title, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          'To-Do Profile',
          style: AppTheme.profileHeaderStyle(context),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '11 tasks',
          style:
              Theme.of(context).textTheme.subhead.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
