import 'package:flutter/material.dart';

enum Sizes { xs, s, m, l, xl }

class SegmentedButtonScreen extends StatefulWidget {
  static const path = '/SegmentedButton';
  const SegmentedButtonScreen({super.key});

  @override
  State<SegmentedButtonScreen> createState() => _SegmentedButtonScreenState();
}

class _SegmentedButtonScreenState extends State<SegmentedButtonScreen> {
  Set<Sizes> selection = <Sizes>{Sizes.xs};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(SegmentedButtonScreen.path),
      ),
      body: Center(
        child: SegmentedButton<Sizes>(
          segments: Sizes.values
              .map(
                (s) => ButtonSegment(
                  value: s,
                  label: Text(s.name),
                ),
              )
              .toList(),
          selected: selection,
          onSelectionChanged: (p0) => setState(() {
            selection = p0;
          }),
          multiSelectionEnabled: true,
          emptySelectionAllowed: true,
        ),
      ),
    );
  }
}
