import 'package:flutter/material.dart';

import '../Dto/MatchDataDto.dart';

enum FilterType { Yesterday, Today, Tomorrow }

class SportsEventsProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _sportsEvents = [
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Tomorrow',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
    {
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2158/2158416.png",
      'league': 'Series A',
      'teams': 'Milan vs Munch',
      'sportType': 'Football',
      'dateStarting': 'Today',
      'timeStarting': '12:45',
      'timeEnding': '14:00',
      'description':
          'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. Chocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.'
    },
  ];

  late List<MatchData> events = [];
  late List<MatchData> selectedEvents = [];
  FilterType filterType = FilterType.Today;

  SportsEventsProvider() {
    events = _sportsEvents.map((e) => MatchData.fromJson(e)).toList();
    updateSelectedEvents();
  }

  void updateFilter(FilterType type) {
    filterType = type;
    updateSelectedEvents();
    notifyListeners();
  }

  void updateSelectedEvents() {
    selectedEvents = events
        .whereType<MatchData>()
        .where((event) => event.dateStarting == getValueForFilter(filterType))
        .toList(); 
  }

  String getValueForFilter(FilterType type) {
    switch (type) {
      case FilterType.Yesterday:
        return "Yesterday";
      case FilterType.Today:
        return "Today";
      case FilterType.Tomorrow:
        return "Tomorrow";
    }
  }
}
