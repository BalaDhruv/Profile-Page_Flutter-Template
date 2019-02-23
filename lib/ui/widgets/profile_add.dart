import 'package:flutter/material.dart';
import 'package:to_do_app_profile_template/utils/theme.dart';

class ProfileAddCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: AppTheme.addCardColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
