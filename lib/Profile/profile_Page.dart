import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/Profile/profile_appbar.dart';
import 'package:instagram_clone/Profile/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ProfileAppBar(),
      body: ProfilePageBody(),
    );
  }
}

class AllTextStyle {
  static final allStyle = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4);

  static final avatarTitle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4);
}

class ElevatedButtonStyles {
  static final allElevated =
      ElevatedButton.styleFrom(primary: Colors.grey.shade900);
}
