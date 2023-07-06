import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollables/button_list.dart';
import 'package:scrollables/models/post_model.dart';
import 'package:scrollables/post_image.dart';
import 'package:scrollables/profile_pic.dart';

class Post extends StatelessWidget {
  const Post(this.postDetails, {super.key});
  final PostModel postDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfilePic(postDetails.userAvatar),
              Text(
                postDetails.userName,
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(
            postDetails.postText,
            style: GoogleFonts.lato(fontSize: 18),
          ),
          const SizedBox(height: 20),
          PostImage(postDetails.postImage),
          const ButtonList()
        ],
      ),
    );
  }
}
