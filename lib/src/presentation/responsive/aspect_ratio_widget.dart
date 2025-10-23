import 'package:flutter/material.dart';
import 'package:fraction/fraction.dart';

class AspectRatioWidget extends StatelessWidget {
  final String ratio;

  const AspectRatioWidget({super.key, required this.ratio});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Fraction.fromString(ratio).toDouble(),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,

          border: Border.all(color: Colors.white),
        ),

        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Center(
            child: Text(
              'AspectRatio - $ratio',

              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
