import 'package:flutter/material.dart';

import 'package:hello_flutter/styled_text.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  var clickedCount = 0;

  void onPressed() {
    setState(() {
      clickedCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StyledText('Click counter'),
          const SizedBox(height: 20),
          StyledText('$clickedCount'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('Click here'),
          ),
        ],
      ),
    );
  }
}
