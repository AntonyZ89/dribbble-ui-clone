import 'package:flutter/material.dart';
import './filter.dart';

class FilterList extends StatelessWidget {
  const FilterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tags TextField
        const TagsTextField(),
        const SizedBox(height: 26),
        // Color picker
        const ColorPickerTextField(),
        const SizedBox(height: 24),
        // Timeframe dropdown
        TimeFrameTextField(),
        const SizedBox(height: 26),
        // Download dropdown
        DownloadTextField(),
      ],
    );
  }
}
