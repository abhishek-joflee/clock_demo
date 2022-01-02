import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'elapsed_time_text_basic.dart';

class MyStopwatch extends StatefulWidget {
  const MyStopwatch({Key? key}) : super(key: key);

  @override
  State<MyStopwatch> createState() => _MyStopwatchState();
}

class _MyStopwatchState extends State<MyStopwatch>
    with SingleTickerProviderStateMixin {
  // ticker object
  late final Ticker _ticker;

  // elapsed variable
  Duration _elapsed = Duration.zero;

  @override
  void initState() {
    super.initState();

    // create ticker
    _ticker = Ticker((elapsed) {
      setState(() {
        _elapsed = elapsed;
      });
    });

    // start ticker
    _ticker.start();
  }

  @override
  void dispose() {
    // dispose ticker
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeTextBasic(elapsed: _elapsed);
  }
}
