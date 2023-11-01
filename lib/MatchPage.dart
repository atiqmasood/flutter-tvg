import 'package:flutter/material.dart';
import 'package:tvg/Theme/theme.dart';

import 'Components/CustomAppBar.dart';
import 'Components/EventDateTime.dart';
import 'Components/LeagueIcon.dart';
import 'Dto/MatchDataDto.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key, required this.matchData});
  final MatchData matchData;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 100),
        child: const CustomAppBar(showBackButton: true),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 70),
          Center(
              child: LeagueIcon(
            league: matchData.league,
            series: matchData.series,
          )),
          const SizedBox(height: 20),
          EventDateTime(matchData: matchData),
          Text(
            matchData.teams,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Divider(),
          ),
          SizedBox(
            height: 60,
            child: Image.network(matchData.iconUrl),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: Text(
              matchData.description,
              style: const TextStyle(
                color: ThemePalette.black,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
