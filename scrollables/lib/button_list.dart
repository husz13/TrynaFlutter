import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const LikeButton(
            likeCount: 122,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
      ),
    );
  }
}
