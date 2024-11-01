import 'package:flutter/material.dart';

enum RadioType { A, B }

class SelectionWidgetsScreen extends StatefulWidget {
  static const path = '/selectionWidgetsScreen';
  const SelectionWidgetsScreen({super.key});

  @override
  State<SelectionWidgetsScreen> createState() => _SelectionWidgetsScreenState();
}

class _SelectionWidgetsScreenState extends State<SelectionWidgetsScreen> {
  bool checkedValue = false;
  DateTime? dateTime;
  MenuController menuController = MenuController();
  RadioType _radioType = RadioType.A;
  double sliderValue = 0;
  RangeValues rangeValues = const RangeValues(10, 90);
  bool light = false;
  TimeOfDay? timeOfDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(SelectionWidgetsScreen.path),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              child: Row(
                children: [
                  Checkbox(
                    value: checkedValue,
                    onChanged: (v) => setState(
                      () {
                        checkedValue = v ?? checkedValue;
                      },
                    ),
                  ),
                  const Text('Checkbox'),
                ],
              ),
            ),
            const Divider(),
            const Chip(
              avatar: CircleAvatar(
                child: Text('AB'),
              ),
              label: Text('Aaron Burr'),
            ),
            const Divider(),
            FilledButton.tonal(
              onPressed: () async {
                final d = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                );

                if (d != null) {
                  setState(() {
                    dateTime = d;
                  });
                }
              },
              child: Text(dateTime != null
                  ? dateTime!.toLocal().toString()
                  : 'Pick a dateTime'),
            ),
            const Divider(),
            MenuAnchor(
              controller: menuController,
              menuChildren: [
                MenuItemButton(
                  child: const Text('About dialog'),
                  onPressed: () {
                    showAboutDialog(context: context);
                  },
                ),
                MenuItemButton(
                  child: const Text('showLicensePage'),
                  onPressed: () {
                    showLicensePage(context: context);
                  },
                )
              ],
              builder: (context, controller, child) {
                return TextButton(
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  child: const Text('Open menu'),
                );
              },
            ),
            const Divider(),
            RadioListTile<RadioType>(
              value: RadioType.A,
              groupValue: _radioType,
              onChanged: (value) => setState(() {
                _radioType = value!;
              }),
              title: Text(RadioType.A.name),
            ),
            RadioListTile<RadioType>(
              value: RadioType.B,
              groupValue: _radioType,
              onChanged: (value) => setState(() {
                _radioType = value!;
              }),
              title: Text(RadioType.B.name),
            ),
            const Divider(),
            Slider(
              value: sliderValue,
              onChanged: (value) => setState(() {
                sliderValue = value;
              }),
              label: '$sliderValue',
              min: 0,
              max: 100,
              divisions: 10,
            ),
            RangeSlider(
              values: rangeValues,
              onChanged: (value) => setState(() {
                rangeValues = value;
              }),
              labels: RangeLabels(
                rangeValues.start.toString(),
                rangeValues.end.toString(),
              ),
              min: 0,
              max: 100,
              divisions: 10,
            ),
            const Divider(),
            Switch(
              value: light,
              onChanged: (v) => setState(() {
                light = v;
              }),
            ),
            const Divider(),
            FilledButton(
              onPressed: () async {
                final tod = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (tod != null) {
                  setState(() {
                    timeOfDay = tod;
                  });
                }
              },
              child: Text(timeOfDay != null
                  ? timeOfDay!.format(context)
                  : 'Pick a Time'),
            ),
          ],
        ),
      ),
    );
  }
}
