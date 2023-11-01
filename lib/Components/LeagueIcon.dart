import 'package:flutter/material.dart';
import '../Theme/theme.dart';

class LeagueIcon extends StatelessWidget {
  const LeagueIcon({super.key, required this.league, required this.series});
  final String league;
  final String series;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ThemePalette.secondary,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(league),
            Text(
              series,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
