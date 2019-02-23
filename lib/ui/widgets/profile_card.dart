import 'package:flutter/material.dart';
import 'package:to_do_app_profile_template/utils/theme.dart';

class ProfileCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  final IconData icon;
  final Color iconColor;

  const ProfileCardWidget(
      {Key key, this.title, this.desc, this.icon, this.iconColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.cardColor,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(icon, color: iconColor),
            SizedBox(height: 25.0),
            Text(
              '$title',
              style: AppTheme.cardTitleStyle(context),
            ),
            Text(
              '$desc',
              style: AppTheme.cardDescStyle(context),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
