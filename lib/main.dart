import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_app_profile_template/ui/profile/profile_screen.dart';
import 'package:to_do_app_profile_template/utils/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do-App-Profile-Flutter-Template',
      theme: ThemeData(
          primaryColor: AppTheme.primary,
          backgroundColor: AppTheme.primary,
          fontFamily: 'Gilroy'),
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
