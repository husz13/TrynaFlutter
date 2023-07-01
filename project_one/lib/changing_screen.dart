import 'package:flutter/material.dart';

class ChangingScreen extends StatefulWidget {
  const ChangingScreen({super.key});
  @override
  State<ChangingScreen> createState() {
    return _ChangingScreen();
  }
}

class _ChangingScreen extends State<ChangingScreen> {
  final picsList = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg'
  ];
  var counter = 0;
  void nextPic() {
    setState(() {
      if (counter == 6) {
        counter = 0;
      } else {
        counter++;
      }
    });
  }

  void prevPic() {
    setState(() {
      if (counter == 0) {
        counter = 6;
      } else {
        counter--;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          picsList[counter],
          width: 250,
          height: 250,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: prevPic,
            child: const Icon(Icons.arrow_circle_left_rounded),
          ),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
            onPressed: nextPic,
            child: const Icon(Icons.arrow_circle_right_rounded),
          ),
        ])
      ],
    );
  }
}
