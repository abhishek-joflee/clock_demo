import 'package:clock_demo/ui/elapsed_time_text_basic.dart';
import 'package:flutter/material.dart';

class MyStopwatch extends StatefulWidget {
  const MyStopwatch({Key? key}) : super(key: key);

  @override
  State<MyStopwatch> createState() => _MyStopwatchState();
}

class _MyStopwatchState extends State<MyStopwatch> {
  @override
  Widget build(BuildContext context) {
    return const ElapsedTimeTextBasic(elapsed: Duration(seconds: 5));
  }
}
