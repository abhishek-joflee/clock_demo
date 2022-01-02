import 'package:flutter/material.dart';

class ElapsedTimeTextBasic extends StatelessWidget {
  const ElapsedTimeTextBasic({Key? key, required this.elapsed})
      : super(key: key);

  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    // ALL DURATION VARIABLES
    final double hundreds = (elapsed.inMilliseconds / 10) % 100;
    final int seconds = elapsed.inSeconds % 60;
    final int minutes = elapsed.inMinutes % 60;

    // DURATION STRING VARIABLES
    final String hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final String secondsStr = seconds.toString().padLeft(2, '0');
    final String minutesStr = minutes.toString().padLeft(2, '0');

    return Text(
      "$minutesStr:$secondsStr.$hundredsStr",
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 40),
    );
  }
}
