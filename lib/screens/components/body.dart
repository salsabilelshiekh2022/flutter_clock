import 'package:flutter/material.dart';

import 'clock.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Newport Beach, USA | PST',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const TimeInHourAndMinute(),
          const Clock(),
        ],
      ),
    );
  }
}
