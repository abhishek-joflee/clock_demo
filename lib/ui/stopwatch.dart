import 'package:clock_demo/ui/elapsed_time_text_basic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyStopwatch extends StatefulWidget {
  const MyStopwatch({Key? key}) : super(key: key);

  @override
  State<MyStopwatch> createState() => _MyStopwatchState();
}

class _MyStopwatchState extends State<MyStopwatch>
    with SingleTickerProviderStateMixin {
  // DATETIME STATE VARIABLE
  late final Ticker _ticker;
  Duration _elapsed = Duration.zero;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker((elapsed) {
      setState(() {
        _elapsed = elapsed;
      });
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeTextBasic(elapsed: _elapsed);
  }
}
