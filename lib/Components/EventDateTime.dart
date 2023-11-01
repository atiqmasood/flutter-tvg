import 'package:flutter/material.dart';

import '../Dto/MatchDataDto.dart';

class EventDateTime extends StatelessWidget {
  const EventDateTime({super.key, required this.matchData});
  final MatchData matchData;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        children: [
          TextSpan(text: matchData.dateStarting),
          const TextSpan(text: " | "),
          TextSpan(text: matchData.timeStarting),
          const TextSpan(text: " - "),
          TextSpan(text: matchData.timeEnding),
        ],
      ),
    );
  }
}
