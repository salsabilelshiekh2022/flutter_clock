import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter(this.context, this.dateTime);
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;

    Offset center = Offset(centerX, centerY);

    canvas.drawCircle(
        center, 24, Paint()..color = Theme.of(context).primaryIconTheme.color!);

    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).colorScheme.background);
    canvas.drawCircle(
        center, 10, Paint()..color = Theme.of(context).primaryIconTheme.color!);

    //secound calculator

    double secoundX =
        centerX + size.width * .4 * cos((dateTime.second * 6) * pi / 180);
    double secoundY =
        centerX + size.height * .4 * sin((dateTime.second * 6) * pi / 180);

    //seconds line

    canvas.drawLine(center, Offset(secoundX, secoundY),
        Paint()..color = Theme.of(context).primaryColor);

    //hour calculator

    double hourX = centerX +
        size.width *
            .3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerX +
        size.height *
            .3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    //hour line

    canvas.drawLine(
        center,
        Offset(hourX, hourY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    //Minute calculator

    double minX =
        centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);

    double minY =
        centerX + size.height * 0.35 * sin((dateTime.minute * 6) * pi / 180);

    // minute line

    canvas.drawLine(
        center,
        Offset(minX, minY),
        Paint()
          ..color = Theme.of(context).hintColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
