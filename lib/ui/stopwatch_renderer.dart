import 'package:flutter/material.dart';

import 'elapsed_time_text_basic.dart';

class StopwatchRenderer extends StatelessWidget {
  const StopwatchRenderer({Key? key, required this.elapsed}) : super(key: key);

  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeTextBasic(elapsed: elapsed);
  }
}