import 'package:flutter/material.dart';
import 'package:quiz_app/summary_screen/summary_item_decorated.dart';

class Summary extends StatelessWidget {
  const Summary({super.key, required this.summaryList});
  final List<Map<String, Object>> summaryList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryList.map(
          (item) {
            return SummaryItemDecorated(summaryItem: item);
          },
        ).toList()),
      ),
    );
  }
}
