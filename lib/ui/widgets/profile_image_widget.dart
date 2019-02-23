import 'package:flutter/material.dart';
import 'package:to_do_app_profile_template/utils/constants.dart';

class ProfileImageWidget extends StatelessWidget {
  // Image link (Online)
  final String image =
      'https://media.licdn.com/dms/image/C5603AQEi2D9wzgWB5w/profile-displayphoto-shrink_200_200/0?e=1556150400&v=beta&t=oOvC-_8HQgPOVOiKj4jxWHTGd-u1tbxVcVWQd6SCgE8';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
