import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Providers/SportsEventsProvider.dart';
import 'SportsEventsPage.dart';

//App Driver
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  
  runApp(
    ChangeNotifierProvider(
      create: (context) => SportsEventsProvider(),
      child: const MaterialApp(
        title: 'Sports Events',
        debugShowCheckedModeBanner: false,
        home: SportsEventsPage(),
      ),
    ),
  );
}
