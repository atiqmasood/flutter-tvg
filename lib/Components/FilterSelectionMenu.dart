import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/SportsEventsProvider.dart';
import '../Theme/theme.dart';

class FilterSelectionMenu extends StatelessWidget {
  const FilterSelectionMenu({super.key});

  Widget _filterSelectionItem(
    FilterType filterType,
    SportsEventsProvider provider,
  ) {
    bool isSelectedFilter = provider.filterType == filterType;
    return InkWell(
      onTap: () {
        provider.updateFilter(filterType);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
        child: Container(
          padding: const EdgeInsets.only(bottom: 5),
          decoration: isSelectedFilter
              ? const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: ThemePalette.success, width: 3),
                  ),
                )
              : null,
          child: Text(
            provider.getValueForFilter(filterType),
            style: TextStyle(
              color:
                  isSelectedFilter ? ThemePalette.success : ThemePalette.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemePalette.lightGray.withOpacity(0.4),
      child: Consumer<SportsEventsProvider>(
        builder: (context, provider, _) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _filterSelectionItem(FilterType.Yesterday, provider),
            _filterSelectionItem(FilterType.Today, provider),
            _filterSelectionItem(FilterType.Tomorrow, provider),
          ],
        ),
      ),
    );
  }
}
