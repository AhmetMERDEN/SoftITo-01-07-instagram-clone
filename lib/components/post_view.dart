import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/models/post_model.dart';

import 'costom_icon_button.dart';

class PostView extends StatelessWidget {
  final PostModel post;
  const PostView({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              _userAvatar(post.userAvatar),
              Text(
                post.username,
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ))
            ],
          ),
          Image.network(post.media),
          Row(
            children: [
              CustomIconButton(
                  icon: "assets/icons/notifications.png", onPressed: () {}),
              CustomIconButton(
                  icon: "assets/icons/comment.png", onPressed: () {}),
              CustomIconButton(icon: "assets/icons/send.png", onPressed: () {}),
              Spacer(),
              CustomIconButton(icon: "assets/icons/save.png", onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _userAvatar(String image) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Colors.pink,
            Colors.orange,
          ],
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(3),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
