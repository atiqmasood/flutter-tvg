import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Components/CustomAppBar.dart';
import 'Components/EventDateTime.dart';
import 'Components/LeagueIcon.dart';
import 'Dto/MatchDataDto.dart';
import 'MatchPage.dart';
import 'Providers/SportsEventsProvider.dart';
import 'Theme/theme.dart';

class SportsEventsPage extends StatelessWidget {
  const SportsEventsPage({super.key});

  Widget _eventTile(MatchData matchData, context, {bool isSelected = false}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MatchPage(
              matchData: matchData,
            ),
          ),
        );
      },
      child: Container(
        color: isSelected ? ThemePalette.secondary : ThemePalette.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: Image.network(matchData.iconUrl),
            title: EventDateTime(matchData: matchData),
            titleAlignment: ListTileTitleAlignment.center,
            subtitle: Text(
              matchData.teams,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: LeagueIcon(
              league: matchData.league,
              series: matchData.series,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 100),
        child: const CustomAppBar(),
      ),
      body: Consumer<SportsEventsProvider>(
        builder: (context, provider, _) => ListView.builder(
            itemCount: provider.selectedEvents.length,
            itemBuilder: (context, index) {
              return _eventTile(provider.selectedEvents[index], context);
            }),
      ),
    );
  }
}
