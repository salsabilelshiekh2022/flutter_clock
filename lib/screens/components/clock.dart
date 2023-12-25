import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'clock_painter.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime dateTime = DateTime.now();
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 0),
                    color: kShadowColor.withOpacity(0.14),
                    blurRadius: 64),
              ]),
          child: Transform.rotate(
            angle: -pi / 2,
            child: CustomPaint(
              painter: ClockPainter(context, dateTime),
            ),
          ),
        ),
      ),
    );
  }
}
