import 'package:flutter/material.dart';
import 'package:to_do_app_profile_template/ui/widgets/profile_add.dart';
import 'package:to_do_app_profile_template/ui/widgets/profile_card.dart';
import 'package:to_do_app_profile_template/ui/widgets/profile_header.dart';
import 'package:to_do_app_profile_template/ui/widgets/profile_image_widget.dart';
import 'package:to_do_app_profile_template/utils/theme.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //App Bar Back Button
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_backspace, color: Colors.white),
        ),
        actions: <Widget>[
          // Profile Image Widget
          ProfileImageWidget(),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        color: AppTheme.primary,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header Widget
            ProfileHeaderWidget(),
            SizedBox(
              height: 35.0,
            ),
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: <Widget>[
                  ProfileCardWidget(
                    title: 'Todo',
                    desc: '4 tasks',
                    icon: Icons.list,
                    iconColor: AppTheme.iconColors[0],
                  ),
                  ProfileCardWidget(
                    title: 'Notes',
                    desc: '4 notes',
                    icon: Icons.event_note,
                    iconColor: AppTheme.iconColors[1],
                  ),
                  ProfileCardWidget(
                    title: 'Calendar',
                    desc: '11 events',
                    icon: Icons.calendar_today,
                    iconColor: AppTheme.iconColors[2],
                  ),
                  ProfileCardWidget(
                    title: 'Finance',
                    desc: '3 cards',
                    icon: Icons.local_atm,
                    iconColor: AppTheme.iconColors[3],
                  ),
                  ProfileCardWidget(
                    title: 'Camara',
                    desc: '428 photos',
                    icon: Icons.camera,
                    iconColor: AppTheme.iconColors[4],
                  ),

                  // Add New To do Card
                  ProfileAddCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
