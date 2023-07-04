import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.text, super.key, required this.onTap});
  final void Function() onTap;
  final String text;
  @override
  build(context) {
    const backColor = Color.fromARGB(255, 206, 119, 119); //rgb(206, 119, 119)

    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
          backgroundColor: backColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          side: const BorderSide(width: 2, color: Colors.white)),
      child: Text(
        text,
      ),
    );
  }
}
