class MatchData {
  final String iconUrl;
  final String league;
  final String series;
  final String teams;
  final String sportType;
  final String dateStarting;
  final String timeStarting;
  final String timeEnding;
  final String description;

  MatchData({
    required this.iconUrl,
    required this.league,
    required this.series,
    required this.teams,
    required this.sportType,
    required this.dateStarting,
    required this.timeStarting,
    required this.timeEnding,
    required this.description,
  });

  factory MatchData.fromJson(Map<String, dynamic> json) {
    var leagueAndSeries = json['league'];
    return MatchData(
      iconUrl: json['iconUrl'],
      league: leagueAndSeries.split(' ')[0],
      series: leagueAndSeries.split(' ')[1],
      teams: json['teams'],
      sportType: json['sportType'],
      dateStarting: json['dateStarting'],
      timeStarting: json['timeStarting'],
      timeEnding: json['timeEnding'],
      description: json['description'],
    );
  }
}
