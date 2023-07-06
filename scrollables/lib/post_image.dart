import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage(this.postImageDir, {super.key});
  final String postImageDir;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(postImageDir),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 109, 13, 13),
      ),
    );
  }
}
