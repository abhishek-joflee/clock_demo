import 'dart:math';

import 'package:flutter/material.dart';

class StopwatchRenderer extends StatelessWidget {
  const StopwatchRenderer({Key? key, required this.elapsed}) : super(key: key);

  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          transform: Matrix4.identity()
            ..translate(50.0, 0.0, 0.0)
            ..rotateZ(pi / 4),
          alignment: Alignment.center,
          child: Container(color: Colors.amber),
        ),
        // ElapsedTimeTextBasic(elapsed: elapsed),
      ],
    );
  }
}
