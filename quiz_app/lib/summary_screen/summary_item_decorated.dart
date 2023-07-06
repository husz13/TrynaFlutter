import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/summary_screen/index_decoration.dart';

class SummaryItemDecorated extends StatelessWidget {
  const SummaryItemDecorated({super.key, required this.summaryItem});
  final Map<String, Object> summaryItem;
  bool isCorrect() =>
      summaryItem["selected_answer"] == summaryItem["correct_answer"];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IndexDecoration(
          questionIndex: (summaryItem["question_index"] as int) + 1,
          isCorrect: isCorrect(),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summaryItem["question"] as String,
                  style: GoogleFonts.abel(
                    color: const Color.fromARGB(255, 111, 102, 102),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  summaryItem["correct_answer"] as String,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 77, 179, 102),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  summaryItem["selected_answer"] as String,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 235, 123, 123),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        )
      ],
    );
  }
}
