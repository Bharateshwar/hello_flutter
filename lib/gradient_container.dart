import 'package:flutter/material.dart';
import 'package:hello_flutter/counter.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 6, 39, 38),
            Color.fromARGB(255, 10, 6, 45),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Counter(),
      ),
    );
  }
}
