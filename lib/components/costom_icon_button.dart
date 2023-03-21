// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/view/dms/dm_view.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final Function onPressed;
  final double padding;
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.padding = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: padding),
      child: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DmPage(),
              ),
            );
          },
          child: Image.asset(
            icon,
            width: 25,
            height: 25,
          ),
        ),
      ),
    );
  }
}
