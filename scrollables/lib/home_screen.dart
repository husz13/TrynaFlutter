import 'package:flutter/material.dart';
import 'package:scrollables/data/posts.dart';
import 'package:scrollables/post.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 184, 169, 167),
            Color.fromARGB(255, 115, 121, 120)
          ],
        ),
      ), //rgb(179, 200, 144)//rgb(219, 223, 170)
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [...posts.map((item) => Post(item))],
      )),
    );
  }
}
