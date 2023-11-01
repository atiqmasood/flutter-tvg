import 'package:flutter/material.dart';
import 'package:tvg/Theme/theme.dart';

import 'filterSelectionMenu.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.showBackButton = false});
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          color: ThemePalette.primary,
          height: 50,
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "TVG",
              style: TextStyle(
                  color: ThemePalette.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        const FilterSelectionMenu(),
        if (showBackButton)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_back,
                      color: ThemePalette.black,
                    ),
                  ),
                  Text(
                    "Go Back",
                    style: TextStyle(
                      color: ThemePalette.black,
                    ),
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}
